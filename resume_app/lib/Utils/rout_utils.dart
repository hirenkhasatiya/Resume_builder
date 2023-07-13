class Myroutes {

  static String home = "/";

  static String resumeWorkspace = 'resume_workspace';

  static String splashScreen = 'splash_screen';

  static String Iconpath = 'asset/Icons/';

  static List<Map<String, dynamic>> buildOptions = [

      {
        'name': 'contact_info',
        'title': 'Contact Info',
        'icon': "${Iconpath}contact_detail.png",
      },
      {
        'name': 'carrier_objective',
        'title': 'Carrier Objective',
        'icon': "${Iconpath}briefcase.png",
      },
      {
        'name': 'personal_detail',
        'title': 'Personal Detail',
        'icon': "${Iconpath}account.png",
      },
      {
        'name': 'education',
        'title': 'Education',
        'icon': "${Iconpath}graduation-cap.png",
      },
      {
        'name': 'experience',
        'title': 'Experience',
        'icon': "${Iconpath}logical-thinking.png",
      },
      {
        'name': 'technical_skill',
        'title': 'Technical Skill',
        'icon': "${Iconpath}certificate.png",
      },
      {
        'name': 'interest/hobbies',
        'title': 'Interest/Hobbies',
        'icon': "${Iconpath}open-book.png",
      },
      {
        'name': 'projects',
        'title': 'Projects',
        'icon': "${Iconpath}project-management.png",
      },
      {
        'name': 'achievements',
        'title': 'Achievements',
        'icon': "${Iconpath}experience.png",
      },
      {
        'name': 'references',
        'title': 'References',
        'icon': "${Iconpath}handshake.png",
      },
      {
        'name': 'declaration',
        'title': 'Declaration',
        'icon': "${Iconpath}declaration.png",
      },
  ];
}
