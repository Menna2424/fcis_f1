import 'dart:io';
import 'package:fcis_f1/core/utils/routes_manager.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/colors_manager.dart';
import 'opportunity_form_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OpportunitiesPage extends StatefulWidget {
  @override
  _OpportunitiesPageState createState() => _OpportunitiesPageState();
}

class _OpportunitiesPageState extends State<OpportunitiesPage> {
  String selectedFilter = 'All';
  String? userName;
  String? userPosition;
  String? userImageUrl;
  String? userStatus;

  List<Map<String, String>> jobPosts = [
    {
      'companyName': 'Tech Solutions',
      'website': 'https://techsolutions.com',
      'contactEmail': 'hr@techsolutions.com',
      'jobTitle': 'Flutter Developer',
      'description': 'We are looking for a skilled Flutter Developer.',
      'skills': 'Flutter, Dart, Firebase',
      'qualifications': 'Bachelor\'s in Computer Science',
      'location': 'Remote',
      'salary': '\$2000 - \$3000',
      'jobType': 'Full-Time',
      'userName': 'Ahmed Ali',
      'userPosition': 'HR Manager',
      'userImageUrl': 'https://i.pravatar.cc/150?img=3',
    },
    {
      'companyName': 'Creative Agency',
      'website': 'https://creativeagency.com',
      'contactEmail': 'jobs@creativeagency.com',
      'jobTitle': 'UI/UX Designer',
      'description': 'Join our design team to create amazing user experiences.',
      'skills': 'Figma, Adobe XD, UX Research',
      'qualifications': '2+ years experience',
      'location': 'Cairo, Egypt',
      'salary': '\$1500',
      'jobType': 'Part-Time',
      'userName': 'Sara Mahmoud',
      'userPosition': 'Talent Acquisition',
      'userImageUrl': 'https://i.pravatar.cc/150?img=5',
    },
  ];

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  void _loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      userName = prefs.getString('fullName') ?? 'User Name';
      userPosition = prefs.getString('jobTitle')?.trim();
      userStatus = prefs.getString('status')?.trim();
      userImageUrl = prefs.getString('profileImagePath');
    });
  }

  String getUserPositionText() {
    if (userPosition != null && userPosition!.isNotEmpty) {
      return userPosition!;
    } else if (userStatus != null && userStatus!.isNotEmpty) {
      return userStatus!;
    } else {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredPosts = selectedFilter == 'All'
        ? jobPosts
        : jobPosts.where((post) => post['jobType'] == selectedFilter).toList();

    return Scaffold(
      backgroundColor: ColorsManager.backGroundColor,
      appBar: AppBar(
        backgroundColor: ColorsManager.backGroundColor,
        title: Text(
          "Opportunities",
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
              icon: Icon(
                Icons.add,
                color: ColorsManager.backGroundColor,
                size: 28,
              ),
              onPressed: () async {
                final newPost = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OpportunityFormPage()),
                );

                if (newPost != null) {
                  newPost['userName'] = userName ?? 'User Name';

                  String positionText = getUserPositionText();
                  newPost['userPosition'] = positionText;

                  newPost['userImageUrl'] = userImageUrl ?? '';

                  setState(() {
                    jobPosts.insert(0, newPost);
                  });
                }
              },
            ),
          ),
          SizedBox(width: 10),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, RoutsManager.profileScreen);
            },
            child: CircleAvatar(
              backgroundImage: userImageUrl != null && userImageUrl!.isNotEmpty
                  ? FileImage(File(userImageUrl!)) as ImageProvider
                  : AssetImage('assets/images/profile_img.png'),
            ),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Filter by Job Type: ',
                    style:
                    TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                SizedBox(width: 10),
                DropdownButton<String>(
                  value: selectedFilter,
                  items: ['All', 'Full-Time', 'Part-Time', 'Internship', 'Remote']
                      .map((type) =>
                      DropdownMenuItem(value: type, child: Text(type)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedFilter = value!;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: filteredPosts.isEmpty
                ? Center(child: Text('No opportunities yet.'))
                : ListView.builder(
              itemCount: filteredPosts.length,
              itemBuilder: (context, index) {
                final post = filteredPosts[index];

                return Card(
                  color: ColorsManager.darkGrey,
                  margin: EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
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
                                radius: 25,
                                backgroundImage: post['userImageUrl'] != null &&
                                    post['userImageUrl']!.isNotEmpty
                                    ? (post['userImageUrl']!.startsWith('http')
                                    ? NetworkImage(post['userImageUrl']!)
                                    : FileImage(File(post['userImageUrl']!))
                                as ImageProvider)
                                    : AssetImage(
                                    'assets/images/profile_img.png'),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Text(
                                    post['userName'] ?? '',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color:
                                        ColorsManager.backGroundColor),
                                  ),
                                  Text(
                                    post['userPosition'] ?? '',
                                    style: TextStyle(
                                      color:
                                      ColorsManager.backGroundColor,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        Divider(),
                        Text(
                          post['jobTitle'] ?? '',
                          style: TextStyle(
                              color: ColorsManager.backGroundColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        _buildField('Company Name', post['companyName']),
                        _buildField('Website', post['website']),
                        _buildField('Contact Email', post['contactEmail']),
                        _buildField('Description', post['description']),
                        _buildField('Skills', post['skills']),
                        _buildField(
                            'Qualifications', post['qualifications']),
                        _buildField('Location', post['location']),
                        _buildField('Salary', post['salary']),
                        _buildField('Job Type', post['jobType']),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildField(String fieldName, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$fieldName: ',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: ColorsManager.backGroundColor),
          ),
          Expanded(
            child: Text(
              value ?? '',
              style: TextStyle(color: ColorsManager.backGroundColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Chip(
        label: Text(label,
            style: TextStyle(color: ColorsManager.backGroundColor)),
        backgroundColor: ColorsManager.darkGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
