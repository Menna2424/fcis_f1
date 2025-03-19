class Course{
  final String name ;
  final Map <String ,String > lectures ;
  final Map <String , String > labs ;

  Course({required this.name,required this.lectures,required this.labs});


}


List<Course> courses =[

 Course(name: "Operating System", lectures: {
   'Lecture 1': 'https://drive.google.com/drive/folders/1HYv-HTODHmOl3GCiDZJpWiyzh_oDheFT',
   'Lecture 2':'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
   'Lecture 3':'https://drive.google.com/drive/folders/1U14ZhLEIJOkS54Xi7YGUFVolpxpR5UG0',
   'Lecture 4':'https://drive.google.com/drive/folders/1WZA28xz14t3RrYfXgtQ0OwKJ_gHdLKqQ',
   'Lecture 5':'https://drive.google.com/drive/folders/1W86oEjmMNIsm3y5z82t2wTVEWwMLlK0S',
   'Lecture 6':'https://drive.google.com/drive/folders/1_e6NfqbGBkCWDhn12smGuMKQqT2zIMpN',
   'Lecture 7':'https://drive.google.com/drive/folders/1HuPjYwlZnTV6lkyR8X8R1a7Y6wzBe2Wz',
   'Lecture 8':'https://drive.google.com/drive/folders/1iEjYOCoRL7vM31KbbjyWOJufTPoyOGzp',
   'Lecture 9':'https://drive.google.com/drive/folders/1nsk3mXafmApX7KSbdt5xY018Ta3HlHVH',
   'Lecture 10':'https://drive.google.com/drive/folders/1T99vtAUi2VlaRdISnOoV4ZNyqiGf05zG',



 },
     labs: {

   'Lab 1': 'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
   'Lab 2':'https://drive.google.com/drive/folders/19IkLm0H_Sgdtx8YkYv74G9Q2oKjWngw3',
   'Lab 3': 'https://drive.google.com/drive/folders/1i9x5udLFask63RsgSgo5nqvMQwCne_FY',
   'Lab 4': 'https://drive.google.com/drive/folders/101rBZb1-nshLl24u33rHrXMR6uS6t5Yf',
   'Lab 6': 'https://drive.google.com/drive/folders/1U73OtGziDgYjud0IYWtG_6Kcg3L78OFS',
   'Lab 7': 'https://drive.google.com/drive/folders/1sSERTyrYrAzJQhamXGmLbaJWoWvfUwOL',
   'Lab 9': 'https://drive.google.com/drive/folders/1K8mqZpY6MSdYN2EbcIzwtvIyPXPprPWV',
 }),

  Course(name: "Computer Networks", lectures: {
    'Lecture 1': 'https://docs.google.com/presentation/d/1j9CpyNCfxbH5v-nbtKVbwPsksxf61lvs/edit#slide=id.p1',
    'Lecture 2':'https://docs.google.com/presentation/d/1fIDlan1eGy_sR6M9ZpvdNB9xurL_nbiO/edit',
    'Lecture 3':'https://docs.google.com/presentation/d/1zhKr2KU6B0DI836NGg8zJYDm-Ar5uNLF/edit',
    'Lecture 4':'https://docs.google.com/presentation/d/1WFlfYgRL0dhF_UltKos-wtsHqkVEJ_Im/edit#slide=id.p1',
    'Lecture 5':'https://docs.google.com/presentation/d/1z-PryNtskZCMhNNEOxFxqCmVXsA175Mc/edit#slide=id.p1',
    'Lecture 6':'https://docs.google.com/presentation/d/1Xs_gyB1Lvp_eIoKsYXbXoCvgTdXNZE3b/edit',
    'Lecture 7':'https://docs.google.com/presentation/d/1zVxFpo6uVEIDVUaUhm--w4NcKCouAgFV/edit',
    'Lecture 8':'https://docs.google.com/presentation/d/15X2FOBtJaEhj-EiSH-HCAEzRKIjdc070/edit#slide=id.p1',
    'Lecture 9':'https://docs.google.com/presentation/d/1BkORMAWVNwZgR_zygkZJ5JFvJo9OlT72/edit#slide=id.p1',
    'Lecture 10':'https://docs.google.com/presentation/d/1ixvSd7Fiu16IAyzbhvUCsrKtMnL4YfOX/edit',



  },
      labs: {

        'Lab 1': 'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
        'Lab 2':'https://drive.google.com/drive/folders/19IkLm0H_Sgdtx8YkYv74G9Q2oKjWngw3',
        'Lab 3': 'https://drive.google.com/drive/folders/1i9x5udLFask63RsgSgo5nqvMQwCne_FY',
        'Lab 4': 'https://drive.google.com/drive/folders/101rBZb1-nshLl24u33rHrXMR6uS6t5Yf',
        'Lab 6': 'https://drive.google.com/drive/folders/1U73OtGziDgYjud0IYWtG_6Kcg3L78OFS',
        'Lab 7': 'https://drive.google.com/drive/folders/1sSERTyrYrAzJQhamXGmLbaJWoWvfUwOL',
        'Lab 9': 'https://drive.google.com/drive/folders/1K8mqZpY6MSdYN2EbcIzwtvIyPXPprPWV',
      }),

  Course(name: "System Analysis and Design", lectures: {
    'Lecture 1': 'https://docs.google.com/presentation/d/1oMF3XkW_-gmsl16Hdl1hZChMODa1sz2T/edit#slide=id.p1',
    'Lecture 2':'https://docs.google.com/presentation/d/1p89sO1v9UUXG3PQHPqCDPUuVVenBEJ96/edit#slide=id.p1',
    'Lecture 3':'https://docs.google.com/presentation/d/1UlUdUqZ585BwcCAwz5ppvTDmtjLMAtpE/edit#slide=id.p1',
    'Lecture 4':'https://docs.google.com/presentation/d/1raDDTlIDrP86sH5258od-gvaSdY-3AcC/edit',
    'Lecture 5':'https://docs.google.com/presentation/d/1DOOIW1_ArmXW3ELWwd808jS0KWKcngzH/edit?rtpof=true',
    'Lecture 6':'https://docs.google.com/presentation/d/1NxUcG8fE6sPxXkt9jHHJEU8HHpzc97St/edit',
    'Lecture 7':'https://docs.google.com/presentation/d/1O1_prjZWsjsHoWqUpN7rzyQG5FPnwfnj/edit',
    'Lecture 8':'https://docs.google.com/presentation/d/1OB_ErU_XYoqR1VaHy2eyGDhDfB2dSmzA/edit?rtpof=true',
    'Lecture 9':'https://docs.google.com/presentation/d/1BkORMAWVNwZgR_zygkZJ5JFvJo9OlT72/edit#slide=id.p1',
    'Lecture 10':'https://docs.google.com/presentation/d/1sbeoCe8U7GzRqUsBe55qx8sggOR1AfQ9/edit',



  },
      labs: {

        'Lab 1': 'https://docs.google.com/presentation/d/1pDL6NKsRFHp2bPE-I2a5tEIIebzAHaml/edit#slide=id.p1',
        'Lab 2':'https://docs.google.com/presentation/d/12PcPXheclLpsJvyXgkjiYWoBnJQ3h8Po/edit',
        'Lab 3': 'https://drive.google.com/drive/folders/1L-vSrF3g3vBIDMf7OU7d8QkpeEtPiUQa',
        'Lab 4': 'https://docs.google.com/presentation/d/1LHA2zCN1BlBVUjNnukGzBfwnaZK2g_8y/edit',
        'Lab 5': 'https://docs.google.com/presentation/d/1DQ1tBY5tthWZUyUKdkJiINKNPGz5E5Oj/edit',
        'Lab 6': 'https://docs.google.com/presentation/d/1NztoAWTKOqdnE1R3LSlYk5QgyWM6R7sS/edit#slide=id.p1',
        'Lab 7': 'https://docs.google.com/presentation/d/1O2eq88fPwoerLO-zUZICcc_Pjs1VqwZ4/edit',
        'Lab 8': 'https://docs.google.com/presentation/d/1Msdp1Dg7LQ1lnRxIUxgNt6Eq-sdtngLF/edit',
        'Lab 9': 'https://docs.google.com/presentation/d/1cjhfFFPNrcZFnvkPjSRYQwGW0ncDvj6l/edit#slide=id.p1',
      }),



  Course(name: "Analysis & Design of Algorithms", lectures: {
    'Lecture 1': 'https://drive.google.com/drive/folders/1gbXrmmzLrgp06815soh-Kh7tksiDca70',
    'Lecture 2':'https://drive.google.com/drive/folders/1R5k7txcAf_qd54xIWwdf9ks85JVTqFZ6',
    'Lecture 3':'https://drive.google.com/drive/folders/1n6N_f_n8fwCgDXdMZqF0bIRPlUzq_O-O',
    'Lecture 4':'https://drive.google.com/drive/folders/1yCknRsH7dlGl-nLPnTg4OE8PNV_M99yM',
    'Lecture 5':'https://drive.google.com/drive/folders/1RD605q_hKOx7ual9sHHpTKaGbhtsYYn1',
    'Lecture 6':'https://drive.google.com/drive/folders/1U2cPniGgLZebbN98Ac-rCMUszMPra8eC',
    'Lecture 7':'https://drive.google.com/drive/folders/18bPst_gGP6-O56ahuuOwDkh6thXApvox',
    'Lecture 8':'https://drive.google.com/drive/folders/1vIjIdlbDLJusvBVCSyT9dJmiN4Mjt2f6',
    'Lecture 9':'https://drive.google.com/drive/folders/1FT45HcudDOXpqAeVCYFg7a5xSXSkRHQa',
    'Lecture 10':'https://drive.google.com/drive/folders/1ORIh0YT5FLa6LFw2R8JKGcHaeGRcGcLY',

    'Lecture 11':'https://drive.google.com/drive/folders/1nhmWQ1XKi65BnjLTds7-eE-6klR8DskV',   'Lecture 12':'https://drive.google.com/drive/folders/1TirpbyCbbe0tCujEG6R1pQHkk4dyb2m1',

  },
      labs: {

        'Lab 1': 'https://drive.google.com/drive/folders/1kxKcOq534htmBQfyV0-teU9TZlRfSLcH',
        'Lab 2':'https://drive.google.com/drive/folders/1dt_ynzTbcsXg3GtrMmGfrBggNVZzZ4l8',
        'Lab 3': 'https://drive.google.com/drive/folders/1mRzg2dONoc-BRzxx09gCG-UIqRWP8ZZc',
        'Lab 4': 'https://drive.google.com/drive/folders/1-Vap4T3BqMdq-T65h80aYra66sOXpA9B',
        'Lab 5': 'https://docs.google.com/presentation/d/1DQ1tBY5tthWZUyUKdkJiINKNPGz5E5Oj/edit',
        'Lab 6': 'https://drive.google.com/drive/folders/1gZqB-aKdVQxgZ6wcUBCzTT_RS01hUM0q',
        'Lab 7': 'https://drive.google.com/drive/folders/1koJT5kvSnPiUB2m7Gi5lNSG2C9CpaKQ9',
        'Lab 8': 'https://drive.google.com/drive/folders/1DY8gyqEZF2UDDXhCWWvyY5dMZxOi0CY3',
        'Lab 9': 'https://drive.google.com/drive/folders/1HMrh87wPOMH1a2iX6JDDeWVSgWdFYkRf',
      }),



  Course(name: "Operating System", lectures: {
    'Lecture 1': 'https://drive.google.com/drive/folders/1HYv-HTODHmOl3GCiDZJpWiyzh_oDheFT',
    'Lecture 2':'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
    'Lecture 3':'https://drive.google.com/drive/folders/1U14ZhLEIJOkS54Xi7YGUFVolpxpR5UG0',
    'Lecture 4':'https://drive.google.com/drive/folders/1WZA28xz14t3RrYfXgtQ0OwKJ_gHdLKqQ',
    'Lecture 5':'https://drive.google.com/drive/folders/1W86oEjmMNIsm3y5z82t2wTVEWwMLlK0S',
    'Lecture 6':'https://drive.google.com/drive/folders/1_e6NfqbGBkCWDhn12smGuMKQqT2zIMpN',
    'Lecture 7':'https://drive.google.com/drive/folders/1HuPjYwlZnTV6lkyR8X8R1a7Y6wzBe2Wz',
    'Lecture 8':'https://drive.google.com/drive/folders/1iEjYOCoRL7vM31KbbjyWOJufTPoyOGzp',
    'Lecture 9':'https://drive.google.com/drive/folders/1nsk3mXafmApX7KSbdt5xY018Ta3HlHVH',
    'Lecture 10':'https://drive.google.com/drive/folders/1T99vtAUi2VlaRdISnOoV4ZNyqiGf05zG',



  },
      labs: {

        'Lab 1': 'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
        'Lab 2':'https://drive.google.com/drive/folders/19IkLm0H_Sgdtx8YkYv74G9Q2oKjWngw3',
        'Lab 3': 'https://drive.google.com/drive/folders/1i9x5udLFask63RsgSgo5nqvMQwCne_FY',
        'Lab 4': 'https://drive.google.com/drive/folders/101rBZb1-nshLl24u33rHrXMR6uS6t5Yf',
        'Lab 6': 'https://drive.google.com/drive/folders/1U73OtGziDgYjud0IYWtG_6Kcg3L78OFS',
        'Lab 7': 'https://drive.google.com/drive/folders/1sSERTyrYrAzJQhamXGmLbaJWoWvfUwOL',
        'Lab 9': 'https://drive.google.com/drive/folders/1K8mqZpY6MSdYN2EbcIzwtvIyPXPprPWV',
      }),

  Course(name: "Operating System", lectures: {
    'Lecture 1': 'https://drive.google.com/drive/folders/1HYv-HTODHmOl3GCiDZJpWiyzh_oDheFT',
    'Lecture 2':'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
    'Lecture 3':'https://drive.google.com/drive/folders/1U14ZhLEIJOkS54Xi7YGUFVolpxpR5UG0',
    'Lecture 4':'https://drive.google.com/drive/folders/1WZA28xz14t3RrYfXgtQ0OwKJ_gHdLKqQ',
    'Lecture 5':'https://drive.google.com/drive/folders/1W86oEjmMNIsm3y5z82t2wTVEWwMLlK0S',
    'Lecture 6':'https://drive.google.com/drive/folders/1_e6NfqbGBkCWDhn12smGuMKQqT2zIMpN',
    'Lecture 7':'https://drive.google.com/drive/folders/1HuPjYwlZnTV6lkyR8X8R1a7Y6wzBe2Wz',
    'Lecture 8':'https://drive.google.com/drive/folders/1iEjYOCoRL7vM31KbbjyWOJufTPoyOGzp',
    'Lecture 9':'https://drive.google.com/drive/folders/1nsk3mXafmApX7KSbdt5xY018Ta3HlHVH',
    'Lecture 10':'https://drive.google.com/drive/folders/1T99vtAUi2VlaRdISnOoV4ZNyqiGf05zG',



  },
      labs: {

        'Lab 1': 'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
        'Lab 2':'https://drive.google.com/drive/folders/19IkLm0H_Sgdtx8YkYv74G9Q2oKjWngw3',
        'Lab 3': 'https://drive.google.com/drive/folders/1i9x5udLFask63RsgSgo5nqvMQwCne_FY',
        'Lab 4': 'https://drive.google.com/drive/folders/101rBZb1-nshLl24u33rHrXMR6uS6t5Yf',
        'Lab 6': 'https://drive.google.com/drive/folders/1U73OtGziDgYjud0IYWtG_6Kcg3L78OFS',
        'Lab 7': 'https://drive.google.com/drive/folders/1sSERTyrYrAzJQhamXGmLbaJWoWvfUwOL',
        'Lab 9': 'https://drive.google.com/drive/folders/1K8mqZpY6MSdYN2EbcIzwtvIyPXPprPWV',
      }),

  Course(name: "Operating System", lectures: {
    'Lecture 1': 'https://drive.google.com/drive/folders/1HYv-HTODHmOl3GCiDZJpWiyzh_oDheFT',
    'Lecture 2':'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
    'Lecture 3':'https://drive.google.com/drive/folders/1U14ZhLEIJOkS54Xi7YGUFVolpxpR5UG0',
    'Lecture 4':'https://drive.google.com/drive/folders/1WZA28xz14t3RrYfXgtQ0OwKJ_gHdLKqQ',
    'Lecture 5':'https://drive.google.com/drive/folders/1W86oEjmMNIsm3y5z82t2wTVEWwMLlK0S',
    'Lecture 6':'https://drive.google.com/drive/folders/1_e6NfqbGBkCWDhn12smGuMKQqT2zIMpN',
    'Lecture 7':'https://drive.google.com/drive/folders/1HuPjYwlZnTV6lkyR8X8R1a7Y6wzBe2Wz',
    'Lecture 8':'https://drive.google.com/drive/folders/1iEjYOCoRL7vM31KbbjyWOJufTPoyOGzp',
    'Lecture 9':'https://drive.google.com/drive/folders/1nsk3mXafmApX7KSbdt5xY018Ta3HlHVH',
    'Lecture 10':'https://drive.google.com/drive/folders/1T99vtAUi2VlaRdISnOoV4ZNyqiGf05zG',



  },
      labs: {

        'Lab 1': 'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
        'Lab 2':'https://drive.google.com/drive/folders/19IkLm0H_Sgdtx8YkYv74G9Q2oKjWngw3',
        'Lab 3': 'https://drive.google.com/drive/folders/1i9x5udLFask63RsgSgo5nqvMQwCne_FY',
        'Lab 4': 'https://drive.google.com/drive/folders/101rBZb1-nshLl24u33rHrXMR6uS6t5Yf',
        'Lab 6': 'https://drive.google.com/drive/folders/1U73OtGziDgYjud0IYWtG_6Kcg3L78OFS',
        'Lab 7': 'https://drive.google.com/drive/folders/1sSERTyrYrAzJQhamXGmLbaJWoWvfUwOL',
        'Lab 9': 'https://drive.google.com/drive/folders/1K8mqZpY6MSdYN2EbcIzwtvIyPXPprPWV',
      }),

  Course(name: "Operating System", lectures: {
    'Lecture 1': 'https://drive.google.com/drive/folders/1HYv-HTODHmOl3GCiDZJpWiyzh_oDheFT',
    'Lecture 2':'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
    'Lecture 3':'https://drive.google.com/drive/folders/1U14ZhLEIJOkS54Xi7YGUFVolpxpR5UG0',
    'Lecture 4':'https://drive.google.com/drive/folders/1WZA28xz14t3RrYfXgtQ0OwKJ_gHdLKqQ',
    'Lecture 5':'https://drive.google.com/drive/folders/1W86oEjmMNIsm3y5z82t2wTVEWwMLlK0S',
    'Lecture 6':'https://drive.google.com/drive/folders/1_e6NfqbGBkCWDhn12smGuMKQqT2zIMpN',
    'Lecture 7':'https://drive.google.com/drive/folders/1HuPjYwlZnTV6lkyR8X8R1a7Y6wzBe2Wz',
    'Lecture 8':'https://drive.google.com/drive/folders/1iEjYOCoRL7vM31KbbjyWOJufTPoyOGzp',
    'Lecture 9':'https://drive.google.com/drive/folders/1nsk3mXafmApX7KSbdt5xY018Ta3HlHVH',
    'Lecture 10':'https://drive.google.com/drive/folders/1T99vtAUi2VlaRdISnOoV4ZNyqiGf05zG',



  },
      labs: {

        'Lab 1': 'https://drive.google.com/drive/folders/1MOSLlBUs9DFFlx__R33HJhzA07UdRHoe',
        'Lab 2':'https://drive.google.com/drive/folders/19IkLm0H_Sgdtx8YkYv74G9Q2oKjWngw3',
        'Lab 3': 'https://drive.google.com/drive/folders/1i9x5udLFask63RsgSgo5nqvMQwCne_FY',
        'Lab 4': 'https://drive.google.com/drive/folders/101rBZb1-nshLl24u33rHrXMR6uS6t5Yf',
        'Lab 6': 'https://drive.google.com/drive/folders/1U73OtGziDgYjud0IYWtG_6Kcg3L78OFS',
        'Lab 7': 'https://drive.google.com/drive/folders/1sSERTyrYrAzJQhamXGmLbaJWoWvfUwOL',
        'Lab 9': 'https://drive.google.com/drive/folders/1K8mqZpY6MSdYN2EbcIzwtvIyPXPprPWV',
      }),














];