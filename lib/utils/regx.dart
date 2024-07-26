class Regex {
  Regex._();

  static const nameRegex = '[A-Za-z .]';
  static const addressRegex = '[A-Za-z0-9 .,&/()-]';
  static const phoneRegex = '[0-9]';
  static const emailRegex = '[0-9a-zA-Z@._]';
  static const panRegex = '[0-9A-Z]';
  static const numberRegexWithDecimal = '[0-9.]';
  static const numberRegexWitouthDecimal = '[0-9]';
  static const phoneValidationRegex = r'^[6-9]\d{9}$';
  static const ifscPattern = '^[A-Z]{4}0[A-Z0-9]{6}';
  static const accountPattern = '[0-9]{9,18}';
  static const panValidationFormat =
      r'^[A-Z]{3}[P]{1}[A-Z]{1}[0-9]{4}[A-Z]{1}$';
  static const emailValidator =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-z]+";
  static const domainList = [
    ".com",
    ".in",
    ".net",
    ".co.in",
    ".website",
    ".org",
    ".co",
    ".store",
    ".biz",
    ".online",
    ".info",
    ".name",
    ".net.in",
    ".org.in",
    ".gen.in",
    ".firm.in",
    ".ind.in",
    ".5g.in",
    ".6g.in",
    ".ai.in",
    ".am.in",
    ".bihar.in",
    ".business.in",
    ".biz.in",
    ".ca.in",
    ".cn.in",
    ".com.in",
    ".coop.in",
    ".cs.in",
    ".delhi.in",
    ".dr.in",
    ".er.in",
    ".gujarat.in",
    ".info.in",
    ".int.in",
    ".internet.in",
    ".io.in",
    ".me.in",
    ".pg.in",
    ".post.in",
    ".pro.in",
    ".travel.in",
    ".tv.in",
    ".uk.in",
    ".up.in",
    ".us.in",
    ".mobi",
    ".co.uk",
    ".me.uk",
    ".org.uk",
    ".me",
    ".host",
    ".press",
    ".space",
    ".tech",
    ".site",
    ".design",
    ".courses",
    ".study",
    ".fun",
    ".io",
    ".भारत",
  ];
}
