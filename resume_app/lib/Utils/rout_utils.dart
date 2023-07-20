class Myroutes {

  static String home = "/";

  static String resumeWorkspace = 'resume_workspace';

  static String splashScreen = 'splash_screen';

  static String iconPath = 'asset/Icons/';

  static List<Map<String, dynamic>> buildOptions = [

      {
        'name': 'contact_info',
        'title': 'Contact Info',
        'icon': "${iconPath}contact_detail.png",
      },
      {
        'name': 'carrier_objective',
        'title': 'Carrier Objective',
        'icon': "${iconPath}briefcase.png",
      },
      {
        'name': 'personal_detail',
        'title': 'Personal Detail',
        'icon': "${iconPath}account.png",
      },
      {
        'name': 'education',
        'title': 'Education',
        'icon': "${iconPath}graduation-cap.png",
      },
      {
        'name': 'experience',
        'title': 'Experience',
        'icon': "${iconPath}logical-thinking.png",
      },
      {
        'name': 'technical_skill',
        'title': 'Technical Skill',
        'icon': "${iconPath}certificate.png",
      },
      {
        'name': 'interest/hobbies',
        'title': 'Interest/Hobbies',
        'icon': "${iconPath}open-book.png",
      },
      {
        'name': 'projects',
        'title': 'Projects',
        'icon': "${iconPath}project-management.png",
      },
      {
        'name': 'achievements',
        'title': 'Achievements',
        'icon': "${iconPath}experience.png",
      },
      {
        'name': 'references',
        'title': 'References',
        'icon': "${iconPath}handshake.png",
      },
      {
        'name': 'declaration',
        'title': 'Declaration',
        'icon': "${iconPath}declaration.png",
      },
  ];
}
