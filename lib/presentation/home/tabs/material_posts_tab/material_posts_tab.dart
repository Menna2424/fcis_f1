import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/colors_manager.dart';

class MaterialPostScreen extends StatefulWidget {
  @override
  _MaterialPostScreenState createState() => _MaterialPostScreenState();
}

class _MaterialPostScreenState extends State<MaterialPostScreen> {
  final TextEditingController _postController = TextEditingController();
  List<String> posts = [
    "This is the first test post on the app! ",
    "Learning Flutter is fun and useful! ",
    "What programming languages are you currently learning? ",
    "Any tips for improving performance in mobile apps? ",
  ];
  Map<int, List<Comment>> comments = {};

  List<InlineSpan> _parseTextWithLinks(String text) {
    final RegExp urlRegex = RegExp(
      r"(https?:\/\/[^\s]+)",
      caseSensitive: false,
    );

    List<InlineSpan> spans = [];
    text.splitMapJoin(
      urlRegex,
      onMatch: (match) {
        String url = match.group(0)!;
        spans.add(
          WidgetSpan(
            child: GestureDetector(
              onTap: () => _launchURL(url),
              child: Text(
                url,
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        );
        return url;
      },
      onNonMatch: (nonMatch) {
        spans.add(TextSpan(text: nonMatch, style: TextStyle(color: Colors.white)));
        return nonMatch;
      },
    );

    return spans;
  }



  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('Could not launch $url');
    }
  }

  void _addComment(int postIndex) {
    TextEditingController commentController = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        decoration: BoxDecoration(
          color: ColorsManager.backGroundColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Add a Comment", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              SizedBox(height: 10),
              TextField(
                controller: commentController,
                decoration: InputDecoration(
                  hintText: "Write your comment...",
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                ),
                maxLines: 4,
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    comments.putIfAbsent(postIndex, () => []).add(
                      Comment(
                        userName: "User ${comments[postIndex]?.length ?? 1}",
                        text: commentController.text,
                      ),
                    );
                  });
                  Navigator.pop(context);
                },
                child: Text("Post"),
              ),
            ],
          ),
        ),
      ),
    );
  }



  void _toggleLike(Comment comment, bool isLike) {
    setState(() {
      if (isLike) {
        if (comment.userReacted == "like") {

          comment.likes--;
          comment.userReacted = "none";
        } else {
          if (comment.userReacted == "dislike") {
            comment.dislikes--;
          }
          comment.likes++;
          comment.userReacted = "like";
        }
      } else {
        if (comment.userReacted == "dislike") {
          comment.dislikes--;
          comment.userReacted = "none";
        } else {
          if (comment.userReacted == "like") {
            comment.likes--;
          }
          comment.dislikes++;
          comment.userReacted = "dislike";
        }
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backGroundColor,
      appBar: AppBar(
        backgroundColor: ColorsManager.backGroundColor,
        title: Text(
          "Material Posts",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          Container(
            decoration: BoxDecoration(
              color: ColorsManager.darkGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: Icon(Icons.add,
                  color: ColorsManager.backGroundColor, size: 28),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: ColorsManager.backGroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  builder: (context) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                        left: 16,
                        right: 16,
                        top: 20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Add New Post", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          TextField(
                            controller: _postController,
                            maxLines: 5,
                            decoration: InputDecoration(
                              hintText: "Write something...",
                              border: OutlineInputBorder(),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                posts.insert(0, _postController.text);
                                _postController.clear();
                              });
                              Navigator.pop(context);
                            },
                            child: Text("Post"),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },

            ),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile_img.png"),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            color: ColorsManager.backGroundColor,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCategoryChip("Web Development"),
                  _buildCategoryChip("Cyber Security"),
                  _buildCategoryChip("Testing"),
                ],
              ),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextField(
          //     controller: _postController,
          //     maxLines: 3,
          //     decoration: InputDecoration(
          //       hintText: "Write something...",
          //       border: OutlineInputBorder(),
          //       fillColor: Colors.white,
          //       filled: true,
          //       suffixIcon: IconButton(
          //         icon: Icon(Icons.send, color: Colors.black),
          //         onPressed: () {
          //           setState(() {
          //             posts.insert(0, _postController.text);
          //             _postController.clear();
          //           });
          //         },
          //       ),
          //     ),
          //   ),
          // ),

          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return _buildPostCard(posts[index], index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPostCard(String content, int index) {
    RegExp linkRegExp = RegExp(r"(https?:\/\/[^\s]+)");
    Iterable<Match> matches = linkRegExp.allMatches(content);
    String? extractedLink = matches.isNotEmpty ? matches.first.group(0) : null;

    return Card(
      color: ColorsManager.darkGrey,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: 185,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(10)),
                    color: Colors.black),
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundImage:
                        AssetImage("assets/images/profile_img.png")),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Menna Ibrahim",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("Flutter Developer",
                              style: TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.comment, color: Colors.white70),
                      onPressed: () => _addComment(index),
                    ),
                    Text("${comments[index]?.length ?? 0}",
                        style: TextStyle(color: Colors.white70)),
                    SizedBox(width: 10),
                    ImageIcon(AssetImage("assets/images/up.png"),color:Colors.white70),
                    ImageIcon(AssetImage("assets/images/Arrow Down Square Contained.png"),color: Colors.white70),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RichText(
              text: TextSpan(
                children: _parseTextWithLinks(content),
              ),
            ),
          ),

          if ((comments[index]?.isNotEmpty ?? false)) ...[
            Divider(color: Colors.white54),
            for (var comment in comments[index]!) _buildComment(comment),
          ]
        ],
      ),
    );
  }

  Widget _buildComment(Comment comment) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(comment.userImage),
              radius: 18,
            ),
            SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(comment.userName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                  Text(comment.text, style: TextStyle(color: Colors.black)),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.thumb_up,
                            color: comment.userReacted == "like"
                                ? Colors.blue
                                : ColorsManager.darkGrey,
                            size: 20),
                        onPressed: () => _toggleLike(comment, true),
                      ),
                      Text("${comment.likes}",
                          style: TextStyle(color: ColorsManager.darkGrey)),
                      SizedBox(width: 10),
                      IconButton(
                        icon: Icon(Icons.thumb_down,
                            color: comment.userReacted == "dislike"
                                ? Colors.red
                                : ColorsManager.darkGrey,
                            size: 20),
                        onPressed: () => _toggleLike(comment, false),
                      ),
                      Text("${comment.dislikes}",
                          style: TextStyle(color: ColorsManager.darkGrey)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildCategoryChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Chip(
        label: Text(label, style: TextStyle(color: ColorsManager.backGroundColor)),
        backgroundColor: ColorsManager.darkGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

class Comment {
  String userName;
  String userImage = "assets/images/profile_img.png";
  String text;
  int likes;
  int dislikes;
  String userReacted; // New field to track user reaction ("none", "like", "dislike")

  Comment({
    required this.userName,
    this.userImage = "assets/images/profile_img.png",
    required this.text,
    this.likes = 0,
    this.dislikes = 0,
    this.userReacted = "none", // Default value is "none"
  });
}

