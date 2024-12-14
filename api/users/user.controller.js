const { sign } = require("jsonwebtoken");
const bcrypt = require("bcrypt");
const nodemailer = require("nodemailer");
const jwt = require("jsonwebtoken");
const pool = require("../../config/database");
// const logger = require("../../util/logger.js");
var createHash = require("hash-generator");
const uploadFile = require("./upload.js");
const uploadFile1 = require("./upload1.js");

let date = new Date();
date = date.toUTCString();
// mail sender details
var transporter = nodemailer.createTransport({
  // service: "gmail",
  host: process.env.MAILING_HOST,
  port: 465,
  auth: {
    user: process.env.MAILING_USER,
    pass: process.env.MAILING_PASSWORD,
  },
  secure: true,
  tls: {
    rejectUnauthorized: false,
  },
});

function getUserByEmail(email, callBack) {
  pool.query(
    `select * from users where email = ? `,
    [email],
    (error, results, fields) => {
      if (error) {
        callBack(error);
      }
      return callBack(null, results[0]);
    }
  );
}


var letters = "\\u0061-\\u007A\\u00AA\\u00B5\\u00BA\\u00DF-\\u00F6\\u00F8-\\u00FF\\u0101\\u0103\\u0105\\u0107\\u0109\\u010B\\u010D\\u010F\\u0111\\u0113\\u0115\\u0117\\u0119\\u011B\\u011D\\u011F\\u0121\\u0123\\u0125\\u0127\\u0129\\u012B\\u012D\\u012F\\u0131\\u0133\\u0135\\u0137\\u0138\\u013A\\u013C\\u013E\\u0140\\u0142\\u0144\\u0146\\u0148\\u0149\\u014B\\u014D\\u014F\\u0151\\u0153\\u0155\\u0157\\u0159\\u015B\\u015D\\u015F\\u0161\\u0163\\u0165\\u0167\\u0169\\u016B\\u016D\\u016F\\u0171\\u0173\\u0175\\u0177\\u017A\\u017C\\u017E-\\u0180\\u0183\\u0185\\u0188\\u018C\\u018D\\u0192\\u0195\\u0199-\\u019B\\u019E\\u01A1\\u01A3\\u01A5\\u01A8\\u01AA\\u01AB\\u01AD\\u01B0\\u01B4\\u01B6\\u01B9\\u01BA\\u01BD-\\u01BF\\u01C6\\u01C9\\u01CC\\u01CE\\u01D0\\u01D2\\u01D4\\u01D6\\u01D8\\u01DA\\u01DC\\u01DD\\u01DF\\u01E1\\u01E3\\u01E5\\u01E7\\u01E9\\u01EB\\u01ED\\u01EF\\u01F0\\u01F3\\u01F5\\u01F9\\u01FB\\u01FD\\u01FF\\u0201\\u0203\\u0205\\u0207\\u0209\\u020B\\u020D\\u020F\\u0211\\u0213\\u0215\\u0217\\u0219\\u021B\\u021D\\u021F\\u0221\\u0223\\u0225\\u0227\\u0229\\u022B\\u022D\\u022F\\u0231\\u0233-\\u0239\\u023C\\u023F\\u0240\\u0242\\u0247\\u0249\\u024B\\u024D\\u024F-\\u0293\\u0295-\\u02AF\\u0371\\u0373\\u0377\\u037B-\\u037D\\u0390\\u03AC-\\u03CE\\u03D0\\u03D1\\u03D5-\\u03D7\\u03D9\\u03DB\\u03DD\\u03DF\\u03E1\\u03E3\\u03E5\\u03E7\\u03E9\\u03EB\\u03ED\\u03EF-\\u03F3\\u03F5\\u03F8\\u03FB\\u03FC\\u0430-\\u045F\\u0461\\u0463\\u0465\\u0467\\u0469\\u046B\\u046D\\u046F\\u0471\\u0473\\u0475\\u0477\\u0479\\u047B\\u047D\\u047F\\u0481\\u048B\\u048D\\u048F\\u0491\\u0493\\u0495\\u0497\\u0499\\u049B\\u049D\\u049F\\u04A1\\u04A3\\u04A5\\u04A7\\u04A9\\u04AB\\u04AD\\u04AF\\u04B1\\u04B3\\u04B5\\u04B7\\u04B9\\u04BB\\u04BD\\u04BF\\u04C2\\u04C4\\u04C6\\u04C8\\u04CA\\u04CC\\u04CE\\u04CF\\u04D1\\u04D3\\u04D5\\u04D7\\u04D9\\u04DB\\u04DD\\u04DF\\u04E1\\u04E3\\u04E5\\u04E7\\u04E9\\u04EB\\u04ED\\u04EF\\u04F1\\u04F3\\u04F5\\u04F7\\u04F9\\u04FB\\u04FD\\u04FF\\u0501\\u0503\\u0505\\u0507\\u0509\\u050B\\u050D\\u050F\\u0511\\u0513\\u0515\\u0517\\u0519\\u051B\\u051D\\u051F\\u0521\\u0523\\u0525\\u0561-\\u0587\\u1D00-\\u1D2B\\u1D62-\\u1D77\\u1D79-\\u1D9A\\u1E01\\u1E03\\u1E05\\u1E07\\u1E09\\u1E0B\\u1E0D\\u1E0F\\u1E11\\u1E13\\u1E15\\u1E17\\u1E19\\u1E1B\\u1E1D\\u1E1F\\u1E21\\u1E23\\u1E25\\u1E27\\u1E29\\u1E2B\\u1E2D\\u1E2F\\u1E31\\u1E33\\u1E35\\u1E37\\u1E39\\u1E3B\\u1E3D\\u1E3F\\u1E41\\u1E43\\u1E45\\u1E47\\u1E49\\u1E4B\\u1E4D\\u1E4F\\u1E51\\u1E53\\u1E55\\u1E57\\u1E59\\u1E5B\\u1E5D\\u1E5F\\u1E61\\u1E63\\u1E65\\u1E67\\u1E69\\u1E6B\\u1E6D\\u1E6F\\u1E71\\u1E73\\u1E75\\u1E77\\u1E79\\u1E7B\\u1E7D\\u1E7F\\u1E81\\u1E83\\u1E85\\u1E87\\u1E89\\u1E8B\\u1E8D\\u1E8F\\u1E91\\u1E93\\u1E95-\\u1E9D\\u1E9F\\u1EA1\\u1EA3\\u1EA5\\u1EA7\\u1EA9\\u1EAB\\u1EAD\\u1EAF\\u1EB1\\u1EB3\\u1EB5\\u1EB7\\u1EB9\\u1EBB\\u1EBD\\u1EBF\\u1EC1\\u1EC3\\u1EC5\\u1EC7\\u1EC9\\u1ECB\\u1ECD\\u1ECF\\u1ED1\\u1ED3\\u1ED5\\u1ED7\\u1ED9\\u1EDB\\u1EDD\\u1EDF\\u1EE1\\u1EE3\\u1EE5\\u1EE7\\u1EE9\\u1EEB\\u1EED\\u1EEF\\u1EF1\\u1EF3\\u1EF5\\u1EF7\\u1EF9\\u1EFB\\u1EFD\\u1EFF-\\u1F07\\u1F10-\\u1F15\\u1F20-\\u1F27\\u1F30-\\u1F37\\u1F40-\\u1F45\\u1F50-\\u1F57\\u1F60-\\u1F67\\u1F70-\\u1F7D\\u1F80-\\u1F87\\u1F90-\\u1F97\\u1FA0-\\u1FA7\\u1FB0-\\u1FB4\\u1FB6\\u1FB7\\u1FBE\\u1FC2-\\u1FC4\\u1FC6\\u1FC7\\u1FD0-\\u1FD3\\u1FD6\\u1FD7\\u1FE0-\\u1FE7\\u1FF2-\\u1FF4\\u1FF6\\u1FF7\\u210A\\u210E\\u210F\\u2113\\u212F\\u2134\\u2139\\u213C\\u213D\\u2146-\\u2149\\u214E\\u2184\\u2C30-\\u2C5E\\u2C61\\u2C65\\u2C66\\u2C68\\u2C6A\\u2C6C\\u2C71\\u2C73\\u2C74\\u2C76-\\u2C7C\\u2C81\\u2C83\\u2C85\\u2C87\\u2C89\\u2C8B\\u2C8D\\u2C8F\\u2C91\\u2C93\\u2C95\\u2C97\\u2C99\\u2C9B\\u2C9D\\u2C9F\\u2CA1\\u2CA3\\u2CA5\\u2CA7\\u2CA9\\u2CAB\\u2CAD\\u2CAF\\u2CB1\\u2CB3\\u2CB5\\u2CB7\\u2CB9\\u2CBB\\u2CBD\\u2CBF\\u2CC1\\u2CC3\\u2CC5\\u2CC7\\u2CC9\\u2CCB\\u2CCD\\u2CCF\\u2CD1\\u2CD3\\u2CD5\\u2CD7\\u2CD9\\u2CDB\\u2CDD\\u2CDF\\u2CE1\\u2CE3\\u2CE4\\u2CEC\\u2CEE\\u2D00-\\u2D25\\uA641\\uA643\\uA645\\uA647\\uA649\\uA64B\\uA64D\\uA64F\\uA651\\uA653\\uA655\\uA657\\uA659\\uA65B\\uA65D\\uA65F\\uA663\\uA665\\uA667\\uA669\\uA66B\\uA66D\\uA681\\uA683\\uA685\\uA687\\uA689\\uA68B\\uA68D\\uA68F\\uA691\\uA693\\uA695\\uA697\\uA723\\uA725\\uA727\\uA729\\uA72B\\uA72D\\uA72F-\\uA731\\uA733\\uA735\\uA737\\uA739\\uA73B\\uA73D\\uA73F\\uA741\\uA743\\uA745\\uA747\\uA749\\uA74B\\uA74D\\uA74F\\uA751\\uA753\\uA755\\uA757\\uA759\\uA75B\\uA75D\\uA75F\\uA761\\uA763\\uA765\\uA767\\uA769\\uA76B\\uA76D\\uA76F\\uA771-\\uA778\\uA77A\\uA77C\\uA77F\\uA781\\uA783\\uA785\\uA787\\uA78C\\uFB00-\\uFB06\\uFB13-\\uFB17\\uFF41-\\uFF5A\\u0041-\\u005A\\u00C0-\\u00D6\\u00D8-\\u00DE\\u0100\\u0102\\u0104\\u0106\\u0108\\u010A\\u010C\\u010E\\u0110\\u0112\\u0114\\u0116\\u0118\\u011A\\u011C\\u011E\\u0120\\u0122\\u0124\\u0126\\u0128\\u012A\\u012C\\u012E\\u0130\\u0132\\u0134\\u0136\\u0139\\u013B\\u013D\\u013F\\u0141\\u0143\\u0145\\u0147\\u014A\\u014C\\u014E\\u0150\\u0152\\u0154\\u0156\\u0158\\u015A\\u015C\\u015E\\u0160\\u0162\\u0164\\u0166\\u0168\\u016A\\u016C\\u016E\\u0170\\u0172\\u0174\\u0176\\u0178\\u0179\\u017B\\u017D\\u0181\\u0182\\u0184\\u0186\\u0187\\u0189-\\u018B\\u018E-\\u0191\\u0193\\u0194\\u0196-\\u0198\\u019C\\u019D\\u019F\\u01A0\\u01A2\\u01A4\\u01A6\\u01A7\\u01A9\\u01AC\\u01AE\\u01AF\\u01B1-\\u01B3\\u01B5\\u01B7\\u01B8\\u01BC\\u01C4\\u01C7\\u01CA\\u01CD\\u01CF\\u01D1\\u01D3\\u01D5\\u01D7\\u01D9\\u01DB\\u01DE\\u01E0\\u01E2\\u01E4\\u01E6\\u01E8\\u01EA\\u01EC\\u01EE\\u01F1\\u01F4\\u01F6-\\u01F8\\u01FA\\u01FC\\u01FE\\u0200\\u0202\\u0204\\u0206\\u0208\\u020A\\u020C\\u020E\\u0210\\u0212\\u0214\\u0216\\u0218\\u021A\\u021C\\u021E\\u0220\\u0222\\u0224\\u0226\\u0228\\u022A\\u022C\\u022E\\u0230\\u0232\\u023A\\u023B\\u023D\\u023E\\u0241\\u0243-\\u0246\\u0248\\u024A\\u024C\\u024E\\u0370\\u0372\\u0376\\u0386\\u0388-\\u038A\\u038C\\u038E\\u038F\\u0391-\\u03A1\\u03A3-\\u03AB\\u03CF\\u03D2-\\u03D4\\u03D8\\u03DA\\u03DC\\u03DE\\u03E0\\u03E2\\u03E4\\u03E6\\u03E8\\u03EA\\u03EC\\u03EE\\u03F4\\u03F7\\u03F9\\u03FA\\u03FD-\\u042F\\u0460\\u0462\\u0464\\u0466\\u0468\\u046A\\u046C\\u046E\\u0470\\u0472\\u0474\\u0476\\u0478\\u047A\\u047C\\u047E\\u0480\\u048A\\u048C\\u048E\\u0490\\u0492\\u0494\\u0496\\u0498\\u049A\\u049C\\u049E\\u04A0\\u04A2\\u04A4\\u04A6\\u04A8\\u04AA\\u04AC\\u04AE\\u04B0\\u04B2\\u04B4\\u04B6\\u04B8\\u04BA\\u04BC\\u04BE\\u04C0\\u04C1\\u04C3\\u04C5\\u04C7\\u04C9\\u04CB\\u04CD\\u04D0\\u04D2\\u04D4\\u04D6\\u04D8\\u04DA\\u04DC\\u04DE\\u04E0\\u04E2\\u04E4\\u04E6\\u04E8\\u04EA\\u04EC\\u04EE\\u04F0\\u04F2\\u04F4\\u04F6\\u04F8\\u04FA\\u04FC\\u04FE\\u0500\\u0502\\u0504\\u0506\\u0508\\u050A\\u050C\\u050E\\u0510\\u0512\\u0514\\u0516\\u0518\\u051A\\u051C\\u051E\\u0520\\u0522\\u0524\\u0531-\\u0556\\u10A0-\\u10C5\\u1E00\\u1E02\\u1E04\\u1E06\\u1E08\\u1E0A\\u1E0C\\u1E0E\\u1E10\\u1E12\\u1E14\\u1E16\\u1E18\\u1E1A\\u1E1C\\u1E1E\\u1E20\\u1E22\\u1E24\\u1E26\\u1E28\\u1E2A\\u1E2C\\u1E2E\\u1E30\\u1E32\\u1E34\\u1E36\\u1E38\\u1E3A\\u1E3C\\u1E3E\\u1E40\\u1E42\\u1E44\\u1E46\\u1E48\\u1E4A\\u1E4C\\u1E4E\\u1E50\\u1E52\\u1E54\\u1E56\\u1E58\\u1E5A\\u1E5C\\u1E5E\\u1E60\\u1E62\\u1E64\\u1E66\\u1E68\\u1E6A\\u1E6C\\u1E6E\\u1E70\\u1E72\\u1E74\\u1E76\\u1E78\\u1E7A\\u1E7C\\u1E7E\\u1E80\\u1E82\\u1E84\\u1E86\\u1E88\\u1E8A\\u1E8C\\u1E8E\\u1E90\\u1E92\\u1E94\\u1E9E\\u1EA0\\u1EA2\\u1EA4\\u1EA6\\u1EA8\\u1EAA\\u1EAC\\u1EAE\\u1EB0\\u1EB2\\u1EB4\\u1EB6\\u1EB8\\u1EBA\\u1EBC\\u1EBE\\u1EC0\\u1EC2\\u1EC4\\u1EC6\\u1EC8\\u1ECA\\u1ECC\\u1ECE\\u1ED0\\u1ED2\\u1ED4\\u1ED6\\u1ED8\\u1EDA\\u1EDC\\u1EDE\\u1EE0\\u1EE2\\u1EE4\\u1EE6\\u1EE8\\u1EEA\\u1EEC\\u1EEE\\u1EF0\\u1EF2\\u1EF4\\u1EF6\\u1EF8\\u1EFA\\u1EFC\\u1EFE\\u1F08-\\u1F0F\\u1F18-\\u1F1D\\u1F28-\\u1F2F\\u1F38-\\u1F3F\\u1F48-\\u1F4D\\u1F59\\u1F5B\\u1F5D\\u1F5F\\u1F68-\\u1F6F\\u1FB8-\\u1FBB\\u1FC8-\\u1FCB\\u1FD8-\\u1FDB\\u1FE8-\\u1FEC\\u1FF8-\\u1FFB\\u2102\\u2107\\u210B-\\u210D\\u2110-\\u2112\\u2115\\u2119-\\u211D\\u2124\\u2126\\u2128\\u212A-\\u212D\\u2130-\\u2133\\u213E\\u213F\\u2145\\u2183\\u2C00-\\u2C2E\\u2C60\\u2C62-\\u2C64\\u2C67\\u2C69\\u2C6B\\u2C6D-\\u2C70\\u2C72\\u2C75\\u2C7E-\\u2C80\\u2C82\\u2C84\\u2C86\\u2C88\\u2C8A\\u2C8C\\u2C8E\\u2C90\\u2C92\\u2C94\\u2C96\\u2C98\\u2C9A\\u2C9C\\u2C9E\\u2CA0\\u2CA2\\u2CA4\\u2CA6\\u2CA8\\u2CAA\\u2CAC\\u2CAE\\u2CB0\\u2CB2\\u2CB4\\u2CB6\\u2CB8\\u2CBA\\u2CBC\\u2CBE\\u2CC0\\u2CC2\\u2CC4\\u2CC6\\u2CC8\\u2CCA\\u2CCC\\u2CCE\\u2CD0\\u2CD2\\u2CD4\\u2CD6\\u2CD8\\u2CDA\\u2CDC\\u2CDE\\u2CE0\\u2CE2\\u2CEB\\u2CED\\uA640\\uA642\\uA644\\uA646\\uA648\\uA64A\\uA64C\\uA64E\\uA650\\uA652\\uA654\\uA656\\uA658\\uA65A\\uA65C\\uA65E\\uA662\\uA664\\uA666\\uA668\\uA66A\\uA66C\\uA680\\uA682\\uA684\\uA686\\uA688\\uA68A\\uA68C\\uA68E\\uA690\\uA692\\uA694\\uA696\\uA722\\uA724\\uA726\\uA728\\uA72A\\uA72C\\uA72E\\uA732\\uA734\\uA736\\uA738\\uA73A\\uA73C\\uA73E\\uA740\\uA742\\uA744\\uA746\\uA748\\uA74A\\uA74C\\uA74E\\uA750\\uA752\\uA754\\uA756\\uA758\\uA75A\\uA75C\\uA75E\\uA760\\uA762\\uA764\\uA766\\uA768\\uA76A\\uA76C\\uA76E\\uA779\\uA77B\\uA77D\\uA77E\\uA780\\uA782\\uA784\\uA786\\uA78B\\uFF21-\\uFF3A\\u01C5\\u01C8\\u01CB\\u01F2\\u1F88-\\u1F8F\\u1F98-\\u1F9F\\u1FA8-\\u1FAF\\u1FBC\\u1FCC\\u1FFC\\u02B0-\\u02C1\\u02C6-\\u02D1\\u02E0-\\u02E4\\u02EC\\u02EE\\u0374\\u037A\\u0559\\u0640\\u06E5\\u06E6\\u07F4\\u07F5\\u07FA\\u081A\\u0824\\u0828\\u0971\\u0E46\\u0EC6\\u10FC\\u17D7\\u1843\\u1AA7\\u1C78-\\u1C7D\\u1D2C-\\u1D61\\u1D78\\u1D9B-\\u1DBF\\u2071\\u207F\\u2090-\\u2094\\u2C7D\\u2D6F\\u2E2F\\u3005\\u3031-\\u3035\\u303B\\u309D\\u309E\\u30FC-\\u30FE\\uA015\\uA4F8-\\uA4FD\\uA60C\\uA67F\\uA717-\\uA71F\\uA770\\uA788\\uA9CF\\uAA70\\uAADD\\uFF70\\uFF9E\\uFF9F\\u01BB\\u01C0-\\u01C3\\u0294\\u05D0-\\u05EA\\u05F0-\\u05F2\\u0621-\\u063F\\u0641-\\u064A\\u066E\\u066F\\u0671-\\u06D3\\u06D5\\u06EE\\u06EF\\u06FA-\\u06FC\\u06FF\\u0710\\u0712-\\u072F\\u074D-\\u07A5\\u07B1\\u07CA-\\u07EA\\u0800-\\u0815\\u0904-\\u0939\\u093D\\u0950\\u0958-\\u0961\\u0972\\u0979-\\u097F\\u0985-\\u098C\\u098F\\u0990\\u0993-\\u09A8\\u09AA-\\u09B0\\u09B2\\u09B6-\\u09B9\\u09BD\\u09CE\\u09DC\\u09DD\\u09DF-\\u09E1\\u09F0\\u09F1\\u0A05-\\u0A0A\\u0A0F\\u0A10\\u0A13-\\u0A28\\u0A2A-\\u0A30\\u0A32\\u0A33\\u0A35\\u0A36\\u0A38\\u0A39\\u0A59-\\u0A5C\\u0A5E\\u0A72-\\u0A74\\u0A85-\\u0A8D\\u0A8F-\\u0A91\\u0A93-\\u0AA8\\u0AAA-\\u0AB0\\u0AB2\\u0AB3\\u0AB5-\\u0AB9\\u0ABD\\u0AD0\\u0AE0\\u0AE1\\u0B05-\\u0B0C\\u0B0F\\u0B10\\u0B13-\\u0B28\\u0B2A-\\u0B30\\u0B32\\u0B33\\u0B35-\\u0B39\\u0B3D\\u0B5C\\u0B5D\\u0B5F-\\u0B61\\u0B71\\u0B83\\u0B85-\\u0B8A\\u0B8E-\\u0B90\\u0B92-\\u0B95\\u0B99\\u0B9A\\u0B9C\\u0B9E\\u0B9F\\u0BA3\\u0BA4\\u0BA8-\\u0BAA\\u0BAE-\\u0BB9\\u0BD0\\u0C05-\\u0C0C\\u0C0E-\\u0C10\\u0C12-\\u0C28\\u0C2A-\\u0C33\\u0C35-\\u0C39\\u0C3D\\u0C58\\u0C59\\u0C60\\u0C61\\u0C85-\\u0C8C\\u0C8E-\\u0C90\\u0C92-\\u0CA8\\u0CAA-\\u0CB3\\u0CB5-\\u0CB9\\u0CBD\\u0CDE\\u0CE0\\u0CE1\\u0D05-\\u0D0C\\u0D0E-\\u0D10\\u0D12-\\u0D28\\u0D2A-\\u0D39\\u0D3D\\u0D60\\u0D61\\u0D7A-\\u0D7F\\u0D85-\\u0D96\\u0D9A-\\u0DB1\\u0DB3-\\u0DBB\\u0DBD\\u0DC0-\\u0DC6\\u0E01-\\u0E30\\u0E32\\u0E33\\u0E40-\\u0E45\\u0E81\\u0E82\\u0E84\\u0E87\\u0E88\\u0E8A\\u0E8D\\u0E94-\\u0E97\\u0E99-\\u0E9F\\u0EA1-\\u0EA3\\u0EA5\\u0EA7\\u0EAA\\u0EAB\\u0EAD-\\u0EB0\\u0EB2\\u0EB3\\u0EBD\\u0EC0-\\u0EC4\\u0EDC\\u0EDD\\u0F00\\u0F40-\\u0F47\\u0F49-\\u0F6C\\u0F88-\\u0F8B\\u1000-\\u102A\\u103F\\u1050-\\u1055\\u105A-\\u105D\\u1061\\u1065\\u1066\\u106E-\\u1070\\u1075-\\u1081\\u108E\\u10D0-\\u10FA\\u1100-\\u1248\\u124A-\\u124D\\u1250-\\u1256\\u1258\\u125A-\\u125D\\u1260-\\u1288\\u128A-\\u128D\\u1290-\\u12B0\\u12B2-\\u12B5\\u12B8-\\u12BE\\u12C0\\u12C2-\\u12C5\\u12C8-\\u12D6\\u12D8-\\u1310\\u1312-\\u1315\\u1318-\\u135A\\u1380-\\u138F\\u13A0-\\u13F4\\u1401-\\u166C\\u166F-\\u167F\\u1681-\\u169A\\u16A0-\\u16EA\\u1700-\\u170C\\u170E-\\u1711\\u1720-\\u1731\\u1740-\\u1751\\u1760-\\u176C\\u176E-\\u1770\\u1780-\\u17B3\\u17DC\\u1820-\\u1842\\u1844-\\u1877\\u1880-\\u18A8\\u18AA\\u18B0-\\u18F5\\u1900-\\u191C\\u1950-\\u196D\\u1970-\\u1974\\u1980-\\u19AB\\u19C1-\\u19C7\\u1A00-\\u1A16\\u1A20-\\u1A54\\u1B05-\\u1B33\\u1B45-\\u1B4B\\u1B83-\\u1BA0\\u1BAE\\u1BAF\\u1C00-\\u1C23\\u1C4D-\\u1C4F\\u1C5A-\\u1C77\\u1CE9-\\u1CEC\\u1CEE-\\u1CF1\\u2135-\\u2138\\u2D30-\\u2D65\\u2D80-\\u2D96\\u2DA0-\\u2DA6\\u2DA8-\\u2DAE\\u2DB0-\\u2DB6\\u2DB8-\\u2DBE\\u2DC0-\\u2DC6\\u2DC8-\\u2DCE\\u2DD0-\\u2DD6\\u2DD8-\\u2DDE\\u3006\\u303C\\u3041-\\u3096\\u309F\\u30A1-\\u30FA\\u30FF\\u3105-\\u312D\\u3131-\\u318E\\u31A0-\\u31B7\\u31F0-\\u31FF\\u3400-\\u4DB5\\u4E00-\\u9FCB\\uA000-\\uA014\\uA016-\\uA48C\\uA4D0-\\uA4F7\\uA500-\\uA60B\\uA610-\\uA61F\\uA62A\\uA62B\\uA66E\\uA6A0-\\uA6E5\\uA7FB-\\uA801\\uA803-\\uA805\\uA807-\\uA80A\\uA80C-\\uA822\\uA840-\\uA873\\uA882-\\uA8B3\\uA8F2-\\uA8F7\\uA8FB\\uA90A-\\uA925\\uA930-\\uA946\\uA960-\\uA97C\\uA984-\\uA9B2\\uAA00-\\uAA28\\uAA40-\\uAA42\\uAA44-\\uAA4B\\uAA60-\\uAA6F\\uAA71-\\uAA76\\uAA7A\\uAA80-\\uAAAF\\uAAB1\\uAAB5\\uAAB6\\uAAB9-\\uAABD\\uAAC0\\uAAC2\\uAADB\\uAADC\\uABC0-\\uABE2\\uAC00-\\uD7A3\\uD7B0-\\uD7C6\\uD7CB-\\uD7FB\\uF900-\\uFA2D\\uFA30-\\uFA6D\\uFA70-\\uFAD9\\uFB1D\\uFB1F-\\uFB28\\uFB2A-\\uFB36\\uFB38-\\uFB3C\\uFB3E\\uFB40\\uFB41\\uFB43\\uFB44\\uFB46-\\uFBB1\\uFBD3-\\uFD3D\\uFD50-\\uFD8F\\uFD92-\\uFDC7\\uFDF0-\\uFDFB\\uFE70-\\uFE74\\uFE76-\\uFEFC\\uFF66-\\uFF6F\\uFF71-\\uFF9D\\uFFA0-\\uFFBE\\uFFC2-\\uFFC7\\uFFCA-\\uFFCF\\uFFD2-\\uFFD7\\uFFDA-\\uFFDC";

var regex = new RegExp("(^|[^" + letters + "])([" + letters + "])", "g");

function capitalizeWords(str1) {
  let str = str1.toLowerCase()
    return str.replace(regex, function(s, m1, m2) {
        return m1 + m2.toUpperCase();
    });
}

module.exports = {
  createUserStaff: async (req, res) => {
    //await uploadFile(req, res);
    //console.log(res)

    const data = req.body;
    var customStaffId = hashgenerator(6);

    function hashgenerator(num) {
      return createHash(num);
    }

    const userPin = Math.floor(Math.random() * 9000 + 1000);

    let date = new Date();
    date = date.toUTCString();

    function idGenerator() {
      // let month = new Date().getMonth() + 1
      let year = new Date().getFullYear();
      return year;
    }

    let partId = await idGenerator();

    const saltRounds = 10;

    let password = await bcrypt.hash(data.password, saltRounds);

    //check if email/username exists
    getUserByEmail(data.email, (err, results) => {
      if (results) {
        return res.status(200).json({
          success: 0,
          message: "Email Already Taken",
          data: [],
        });
      }

      // if not create user
      else {
        let sqlQuery = `insert into staff (userId,sEmail,sGender,sLastName,sFirstName,contact1,contact2,address,definedRole,info,rolecode) values
          ('${customStaffId}','${data.email}','${data.sex}','${capitalizeWords(data.lname)}','${capitalizeWords(data.fname)}','${data.contact1}','${data.contact2}','${data.address}','${data.role}','${data.info}','${data.rolecode}')`;

        pool.query(sqlQuery, (error, result) => {
          console.log(error);

          /////////////////////// check if initial data insert is successful then proceed to insert general users data
          if (result.affectedRows == 1) {
            let sqlQuery1 = `insert into users (userId,email,createdAt,createdBy,pincode,role,password,rolecode ) values
              ('${customStaffId}','${data.email}','${date}','${data.createdBy}',${userPin},'staff','${password}','${data.rolecode}')`;

            pool.query(sqlQuery1, (error, result) => {
              if (error) {
                // logger.info(
                //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new user -error`
                // );
                return res.status(500).json({
                  success: 0,
                  error: "internal server error -create New user",
                });
              }

              if (result.affectedRows == 1) {
                console.log("create new user successful");
                let sqlQuery = `select * from staff left join users on staff.userId = users.userId  where users.role = 'staff'`;
                pool.query(sqlQuery, (error, result) => {
                  res.status(200).json({ success: 1, data: result });
                });
                const signedToken = jwt.sign(
                  { data: result.email },
                  process.env.JWT_KEY
                );

                // send mail to user email
                var mailOptions = {
                  from: 'Yes School Support "seedo@seedogh.com"',
                  to: result.email,
                  subject: "Email Verification",
                  html: `<h2>Thanks for registering on our Platform</h2>
                      <h4>Kindly click on the link below to verify your account</h2>
        
                      
                          <a href=" https://optimumpay.vercel.app/admin9/${result.email}/verify/${signedToken}" >click this link to verify Email </a>`,
                };
                transporter.sendMail(mailOptions, function (error, info) {
                  const jsontoken = sign(
                    { result: result.userId },
                    process.env.JWT_KEY3
                  );

                  // if (error) {
                  //   console.log("mail not sent");
                  //   console.log(signedToken);
                  //   result.password = "";
                  //   return res.status(200).json({
                  //     success: 1,
                  //     message: "sign up  successful",
                  //     userPin: userPin,
                  //     data: logInfo,
                  //     access_token: jsontoken,
                  //     Verification_mail: "mail not sent - network Connectivity",
                  //   });
                  // } else {
                  //   console.log("verification mail sent");
                  //   return res.status(200).json({
                  //     success: 1,
                  //     message: "sign up successful",
                  //     data: logInfo,
                  //     access_token: jsontoken,
                  //     Verification_mail: "mail sent",
                  //     userPin: userPin,
                  //   });
                  // }
                });
              }
            });
          } else
            res.status(500).json({
              success: 0,
              error: "internal server error",
              message: error,
            });
        });
      }
    });
  },

  setStudentPicture: async (req, res) => {
    await uploadFile(req, res);
    const data = JSON.parse(req.body.data);
    console.log(data);

    let link = process.env.SERVERLINK + "/" + data.filename;
    let sqlQuery = `update student set filename='${data.filename}',imagelink = '${link}'
     where userId = '${data.id}' `;

    pool.query(sqlQuery, (error, result) => {
      console.log(result);
      console.log(error);

      if (error) {
        return res
          .status(500)
          .json({ success: 0, Message: "Error Uploadeding Image" });
      }

      if (result.affectedRows == 1) {
        return res
          .status(200)
          .json({ success: 1, Message: "Student Image Uploaded Successfully" });
      }
    });
  },

  setSchoolLogo: async (req, res) => {
    await uploadFile1(req, res);
    const data = JSON.parse(req.body.data);

    let link = process.env.SERVERLINK + "/" + data.filename;
    let sqlQuery = `update school set filename='${data.filename}',logolink = '${link}'
     where id = '1' `;

    pool.query(sqlQuery, (error, result) => {
      //  console.log()
      if (error)
        return res
          .status(500)
          .json({ success: 0, Message: "Error Uploadeding Image" });

      if (result.affectedRows == 1) {
        return res
          .status(200)
          .json({ success: 1, Message: "Student Image Uploaded Successfully" });
      }
    });
  },

  createUserStudent: async (req, res) => {
    const data = req.body;
    const saltRounds = 10;

    var customStudentId = hashgenerator(6);
    var customguardian1Id = hashgenerator(6);
    var customguardian2Id = hashgenerator(6);

    function hashgenerator(num) {
      return createHash(num);
    }
    var studentPass = hashgenerator(5);
    var gaurdian1Pass = hashgenerator(5);
    var gaurdian2Pass = hashgenerator(5);

    var hashedPass = await bcrypt.hash(studentPass, saltRounds);
    var hashedPass1 = await bcrypt.hash(gaurdian1Pass, saltRounds);
    var hashedPass2 = await bcrypt.hash(gaurdian2Pass, saltRounds);

    const userPin = Math.floor(Math.random() * 9000 + 1000);
    const userPin1 = Math.floor(Math.random() * 9000 + 1000);

    function userCreaterStudent(
      sqlQuery,
      customStudentId,
      customguardian1Id,
      customguardian2Id,
      sqlQueryAccount
    ) {
      // first create student into student table
      pool.query(sqlQuery, (error, result) => {
        if (error) return console.log(error);

        /////////////////////// check if initial data insert is successful then proceed to insert general users data
        let GeneratedEmail = data.firstName + createHash(4);
        let GeneratedEmail1 = data.gfName1.toString() + createHash(4);
        let GeneratedEmail2 = data.gfName2.toString() + createHash(4);

        data.email = GeneratedEmail.toLowerCase();

        data.gemail1 =
          data.gemail1 == "" ? GeneratedEmail1.toLowerCase() : data.gemail1;

        data.gemail2 =
          data.gemail2 == "" ? GeneratedEmail2.toLowerCase() : data.gemail2;
        console.log(customStudentId + customguardian1Id + customguardian2Id);
        if (result.affectedRows == 1) {
          // insert first guardian into users table
          if (data.gfName1 != "") {
            let sqlQuery1 = `insert into users (email,createdAt,createdBy,pincode,role,password ,userId,pass) values
          ('${data.gemail1}','${date}','${data.createdBy}',${userPin1},'parent','${hashedPass1}','${customguardian1Id}','${gaurdian2Pass}')`;

            pool.query(sqlQuery1, (error, result) => {
              if (error) {
                console.log("guardian 1 error");
                return res.status(500).json({ success: 0, Message: error });
              }

              if (result.affectedRows == 1) {
                const signedToken = jwt.sign(
                  { data: result.email },
                  process.env.JWT_KEY
                );

                // send mail to user email
                // var mailOptions = {
                //   from: 'Sentel Support "seedo@seedogh.com"',
                //   to: result.email,
                //   subject: "Email Verification",
                //   html: `<h2>Thanks for registering on our Platform</h2>
                //     <h4>Kindly click on the link below to verify your account</h2>

                //         <a href=" https://optimumpay.vercel.app/admin9/${result.email}/verify/${signedToken}" >click this link to verify Email </a>`,
                // };
                // transporter.sendMail(mailOptions, function (error, info) {
                //   const jsontoken = sign(
                //     { result: result.userId },
                //     process.env.JWT_KEY3
                //   );

                //   let logInfo;
                //   if (data.role == "student") {
                //     logInfo = { user: data.email, pass: data.password };
                //   } else {
                //     logInfo = "";
                //   }
                //   if (error) {
                //     console.log("mail not sent");
                //     console.log(signedToken);
                //     result.password = "";
                //     return res.status(200).json({
                //       success: 1,
                //       message: "sign up  successful",
                //       userPin: userPin,
                //       data: logInfo,
                //       access_token: jsontoken,
                //       Verification_mail: "mail not sent - network Connectivity",
                //     });
                //   } else {
                //     console.log("verification mail sent");
                //     return res.status(200).json({
                //       success: 1,
                //       message: "sign up successful",
                //       data: logInfo,
                //       access_token: jsontoken,
                //       Verification_mail: "mail sent",
                //       userPin: userPin,
                //     });
                //   }
                // });
              }
            });
          }

          // insert second guardian into users table
          if (data.gfName2 != "") {
            let sqlQuery1 = `insert into users (email,createdAt,createdBy,pincode,role,password,userId,pass ) values
          ('${data.gemail2}','${date}','${data.createdBy}',${userPin1},'parent','${hashedPass2}','${customguardian2Id}','${gaurdian2Pass}')`;

            pool.query(sqlQuery1, (error, result) => {
              if (error) {
                console.log("parent1 success");
                return res.status(500).json({ success: 0, Message: error });
              }

              if (result.affectedRows == 1) {
                const signedToken = jwt.sign(
                  { data: result.email },
                  process.env.JWT_KEY
                );

                // send mail to user email
                // var mailOptions = {
                //   from: 'Sentel Support "seedo@seedogh.com"',
                //   to: result.email,
                //   subject: "Email Verification",
                //   html: `<h2>Thanks for registering on our Platform</h2>
                //     <h4>Kindly click on the link below to verify your account</h2>

                //         <a href=" https://optimumpay.vercel.app/admin9/${result.email}/verify/${signedToken}" >click this link to verify Email </a>`,
                // };
                // transporter.sendMail(mailOptions, function (error, info) {
                //   const jsontoken = sign(
                //     { result: result.userId },
                //     process.env.JWT_KEY3
                //   );

                //   let logInfo;
                //   if (data.role == "student") {
                //     logInfo = { user: data.email, pass: data.password };
                //   } else {
                //     logInfo = "";
                //   }
                //   if (error) {
                //     console.log("mail not sent");
                //     console.log(signedToken);
                //     result.password = "";
                //     return res.status(200).json({
                //       success: 1,
                //       message: "sign up  successful",
                //       userPin: userPin,
                //       data: logInfo,
                //       access_token: jsontoken,
                //       Verification_mail: "mail not sent - network Connectivity",
                //     });
                //   } else {
                //     console.log("verification mail sent");
                //     return res.status(200).json({
                //       success: 1,
                //       message: "sign up successful",
                //       data: logInfo,
                //       access_token: jsontoken,
                //       Verification_mail: "mail sent",
                //       userPin: userPin,
                //     });
                //   }
                // });
              }
            });
          }

          // insert student into users table
          if (data.firstName != "") {
            let sqlQuery1 = `insert into users (email,createdAt,createdBy,pincode,role,password,userId,pass) values
          ('${data.email}','${date}','${data.createdBy}',${userPin},'student','${hashedPass}','${customStudentId}','${studentPass}')`;

            pool.query(sqlQuery1, (error, result) => {
              if (error) {
                console.log("student eeror error");
                return res.status(500).json({ success: 0, Message: error });
              }

              if (result.affectedRows == 1) {
                pool.query(sqlQueryAccount, (error, result) => {
                  if (error) {
                    console.log("student account error");
                    console.log(error);

                    return res.status(500).json({ success: 0, Message: error });
                  }
                });

                const signedToken = jwt.sign(
                  { data: result.email },
                  process.env.JWT_KEY
                );

                // send mail to user email
                // var mailOptions = {
                //   from: 'Sentel Support "seedo@seedogh.com"',
                //   to: result.email,
                //   subject: "Email Verification",
                //   html: `<h2>Thanks for registering on our Platform</h2>
                //     <h4>Kindly click on the link below to verify your account</h2>

                //         <a href=" https://optimumpay.vercel.app/admin9/${result.email}/verify/${signedToken}" >click this link to verify Email </a>`,
                // };
                // transporter.sendMail(mailOptions, function (error, info) {
                //   const jsontoken = sign(
                //     { result: result.userId },
                //     process.env.JWT_KEY3
                //   );

                //   let logInfo;
                //   if (data.role == "student") {
                //     logInfo = { user: data.email, pass: data.password };
                //   } else {
                //     logInfo = "";
                //   }
                //   if (error) {
                //     console.log("mail not sent");
                //     console.log(signedToken);
                //     result.password = "";
                //     return res.status(200).json({
                //       success: 1,
                //       message: "sign up  successful",
                //       userPin: userPin,
                //       data: logInfo,
                //       access_token: jsontoken,
                //       Verification_mail: "mail not sent - network Connectivity",
                //     });
                //   } else {
                //     console.log("verification mail sent");
                //     return res.status(200).json({
                //       success: 1,
                //       message: "sign up successful",
                //       data: logInfo,
                //       access_token: jsontoken,
                //       Verification_mail: "mail sent",
                //       userPin: userPin,
                //     });
                //   }
                // });
              }
            });
          }

          let studName =
            data.firstName + " " + data.otherName + " " + data.lastName;
          let guardian1 = data.gfName1 + " " + data.glName1;
          let guardian2 = data.gfName2 + " " + data.glName2;

          let dataArray = [
            {
              id: customStudentId,
              studentName: studName,
              studentEmail: data.email,
              studentPass: studentPass,
            },
            {
              guardian1Name: guardian1 != " " ? guardian1 : null,
              guardian1Email: data.gemail1,
              guardian1Pass: gaurdian1Pass,
            },
            {
              guardian2Name: guardian2 != " " ? guardian2 : null,
              guardian2Email: data.gemail2,
              guardian2Pass: gaurdian2Pass,
            },
          ];

          return res.status(200).json({
            success: 1,
            data: dataArray,
            message: "Student and/or Guardian created successfully",
          });
        } else
          res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
      });
    }

    function idGenerator() {
      // let month = new Date().getMonth() + 1
      let year = new Date().getFullYear();
      return year;
    }

    let partId = await idGenerator();

    //check if email/username exists
    getUserByEmail(data.email, (err, results) => {
      if (results) {
        return res.status(200).json({
          success: 0,
          message: "Email Already Taken",
          data: [],
        });
      }

      // if not create user
      else {
        let sqlQuery;

        // check if db is empty start with a default student_id

        let sqlQuery3 = `select student_id from student order by id desc limit 1  `;

        pool.query(sqlQuery3, (error, result) => {
          function myresult() {
            let val = result[0].student_id;
            val = val.slice(-4);
            val = parseInt(val) + 1;
            return "SD" + partId + val;
          }

          // check if db is empty start with a default student_id
          const student_id = result[0] ? myresult() : "SD" + partId + "1110";

          //inserting to guardian table when guardian info is posted together with student
          //after generating student id we need it to insert into guardian table for reference
          if (data.gfName1 != "") {
            sqlQuery = `insert into guardian (gEmail,gSex,gLastName,gFirstName,gContact1,gContact2,gAddress,student_id,gRelation,userId ) values
              ('${data.gemail1}','${data.gsex1}','${capitalizeWords(data.glName1)}','${capitalizeWords(data.gfName1)}','${data.contact1}','${data.contact2}','${data.gAddress1}','${student_id}','${data.gRelation1}','${customguardian1Id}') `;
            pool.query(sqlQuery, (error, result) => {
              console.log("guardian1 created successfully");
            });
          }

          //inserting to guardian table when guardian info is posted together with student
          //after generating student id we need it to insert into guardian table for reference
          if (data.gfName2 != "") {
            sqlQuery = `insert into guardian (gEmail,gSex,gLastName,gFirstName,gContact1,gContact2,gAddress,student_id,gRelation,userId ) values
              ('${data.gemail2}','${data.gsex2}','${capitalizeWords(data.glName2)}','${capitalizeWords(data.gfName2)}','${data.contact3}','${data.contact4}','${data.gAddress2}','${student_id}','${data.gRelation2}','${customguardian2Id}') `;

            pool.query(sqlQuery, (error, result) => {
              console.log("guardian2 created successfully");
            });
          }

          let link = process.env.SERVERLINK + "/" + data.filename;
          

          //insert into student table
          sqlQuery = `insert into student (userId,student_id,cartegory,firstName,lastName,otherName,class,section,religion,dateofbirth,gender) values
            ('${customStudentId}','${student_id}','${data.cartegory}','${capitalizeWords(data.firstName)}','${capitalizeWords(data.lastName)}','${capitalizeWords(data.otherName)}','${data.class}','${data.section}','${capitalizeWords(data.religion)}','${data.dateofbirth}','${data.gender}')`;
          let sqlQueryAccount = `insert into account (student_id,createdat,createdby) values ('${student_id}','${date}','${data.createdBy}')`;

          userCreaterStudent(
            sqlQuery,
            customStudentId,
            customguardian1Id,
            customguardian2Id,
            sqlQueryAccount
          );
        });
      }
    });
  },

  createUserGuardian: async (req, res) => {
    //  await uploadFile(req, res);
    // console.log(res)

    const data = req.body;
    var customguardian1Id = hashgenerator(6);

    function hashgenerator(num) {
      return createHash(num);
    }

    const userPin = Math.floor(Math.random() * 9000 + 1000);

    const saltRounds = 10;
    function generatemail() {
      return data.firstName + hashgenerator(3);
    }

    let custompassword = data.password == null ? hashgenerator(7) : data.email;

    let password = await bcrypt.hash(custompassword, saltRounds);
    let customEmail = data.email == null ? generatemail() : data.email;
    //check if email/username exists
    getUserByEmail(data.email, (err, results) => {
      if (results) {
        return res.status(200).json({
          success: 0,
          message: "Email Already Taken",
          data: [],
        });
      }

      // if not create user
      else {
        let sqlQuery;

        // when user is parent u need to post student id from client side
        sqlQuery = `insert into guardian (userId,gEmail,gSex,gLastName,gFirstName,gContact1,gContact2,gAddress,student_id,gRelation ) values
          ('${customguardian1Id}','${customEmail}','${data.sex}','${data.lastName}','${data.firstName}','${data.contact1}','${data.contact2}','${data.address}','${data.userId}','${data.relation}') `;

        pool.query(sqlQuery, (error, result) => {
          console.log(error);
          /////////////////////// check if initial data insert is successful then proceed to insert general users data
          if (result.affectedRows == 1) {
            let sqlQuery1 = `insert into users (userId,email,createdAt,createdBy,pincode,role,password ) values
              ('${customguardian1Id}','${customEmail}','${date}','${data.createdBy}',${userPin},'${data.role}','${password}')`;

            pool.query(sqlQuery1, (error, result) => {
              if (error) {
                // logger.info(
                //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new user -error`
                // );
                return res.status(500).json({
                  success: 0,
                  error: "internal server error -create New user",
                });
              }

              if (result.affectedRows == 1) {
                // logger.info(
                //   `${req.method} ${req.originalUrl}, create new user successful`
                // );
                let data1 = {
                  name: data.firstName + " " + data.lastName,
                  username: customEmail,
                  password: custompassword,
                };
                res.status(200).json({
                  success: 1,
                  Message: "create New user successful ",
                  data: data1,
                });

                const signedToken = jwt.sign(
                  { data: result.email },
                  process.env.JWT_KEY
                );

                // send mail to user email
                var mailOptions = {
                  from: 'Yes School Support "seedo@seedogh.com"',
                  to: result.email,
                  subject: "Email Verification",
                  html: `<h2>Thanks for registering on our Platform</h2>
                      <h4>Kindly click on the link below to verify your account</h2>
        
                      
                          <a href=" https://optimumpay.vercel.app/admin9/${result.email}/verify/${signedToken}" >click this link to verify Email </a>`,
                };
                transporter.sendMail(mailOptions, function (error, info) {
                  const jsontoken = sign(
                    { result: result.userId },
                    process.env.JWT_KEY3
                  );

                  // if (error) {
                  //   console.log("mail not sent");
                  //   console.log(signedToken);
                  //   result.password = "";
                  //   return res.status(200).json({
                  //     success: 1,
                  //     message: "sign up  successful",
                  //     userPin: userPin,
                  //     data: logInfo,
                  //     access_token: jsontoken,
                  //     Verification_mail: "mail not sent - network Connectivity",
                  //   });
                  // } else {
                  //   console.log("verification mail sent");
                  //   return res.status(200).json({
                  //     success: 1,
                  //     message: "sign up successful",
                  //     data: logInfo,
                  //     access_token: jsontoken,
                  //     Verification_mail: "mail sent",
                  //     userPin: userPin,
                  //   });
                  // }
                });
              }
            });
          } else
            res.status(500).json({
              success: 0,
              error: "internal server error",
              message: error,
            });
        });
      }
    });
  },

  login: async (req, res) => {
    const body = req.body;
    getUserByEmail(body.email, async (err, results) => {
      if (err) {
        // logger.info(
        //   `${req.originalUrl},'DB error:'${err.sqlMessage}, server error`
        // );
        return res.status(500).json({
          success: 0,
          message: "Database Connection Error",
          data: [],
        });
      }

      if (results == undefined) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, user doesn't exist, authentication `
        // );
        return res.status(200).json({
          success: 0,
          data: [],
          message: "Incorrect Email or Password",
        });
      }

      var compare;
      async function compareReseult() {
        compare = await bcrypt.compare(body.password, results.password);
        return compare;
      }

      const resultz = await compareReseult();

      if (resultz == true) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, correct credentials, authentication`
        // );
        const jsontoken = sign({ result: results.email }, process.env.JWT_KEY);

        if (results.role == "student") {
          let sqlQuery = `select * from student where userId ='${results.userId}'  `;
          pool.query(sqlQuery, (error, result) => {
            let returnData = [
              {
                userId: results.userId,
                rolecode: results.rolecode,
                data: result,
                role: results.role,
                email: results.email,
                token: jsontoken,
              },
            ];
            if (error) {
              return res.status(201).json({
                success: 1,
                data: returnData,
                token: jsontoken,
                message: "User data Does not Exist",
              });
            }

            return res.status(200).json({
              success: 1,
              data: returnData,
              token: jsontoken,
            });
          });
        }

        if (results.role == "parent") {
          let sqlQuery = `select * from guardian where userId ='${results.userId}'  `;
          pool.query(sqlQuery, (error, result) => {
            let returnData = [
              {
                userId: results.userId,
                rolecode: results.rolecode,
                data: result,
                role: results.role,
                email: results.email,
                token: jsontoken,
              },
            ];
            if (error) {
              return res.status(201).json({
                success: 1,
                data: returnData,
                token: jsontoken,
                message: "User data Does not Exist",
              });
            }

            return res.status(200).json({
              success: 1,
              data: returnData,
              token: jsontoken,
            });
          });
        }

        if (results.role == "staff") {
          let sqlQuery = `select * from staff where userId ='${results.userId}'  `;
          pool.query(sqlQuery, (error, result) => {
            let returnData = [
              {
                userId: results.userId,
                rolecode: results.rolecode,
                data: result,
                role: results.role,
                email: results.email,
                token: jsontoken,
              },
            ];
            if (error) {
              return res.status(201).json({
                success: 1,
                data: returnData,
                token: jsontoken,
                message: "User data Does not Exist",
              });
            }

            return res.status(200).json({
              success: 1,
              data: returnData,
            });
          });
        }

        // });
      } else {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, Incorrect Email and Password combination`
        // );
        return res.status(200).json({
          success: 0,
          message: "Invalid Email or Password",
          data: [],
        });
      }
    });
  },

  getUserByUserId: (req, res) => {
    const data = req.body;
    let sqlQuery = `select * from users left join staff on users.userId = staff.UserId where users.userId = '${data.id}' `;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(error)
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result == []) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, fetch user by id: no record found`
        // );
        return res
          .status(200)
          .json({ success: 0, error: "Error Fetching Data" });
      }
      // logger.info(`${req.method} ${req.originalUrl}, fetch user by id`);
      console.log(result)
      if (result.length) {

        result[0].password = null
        console.log(result)
        res.status(200).json({ success: 1, data: result });
      }
    });
  },

  getUserByUserIdRole: (req, res) => {
    const id = req.body.id;
    const role = req.body.role;

    let query =
      role == "student"
        ? `select * from student where userId = '${id}'`
        : role == "staff"
          ? `select * from staff where userId = '${id}'`
          : `select * from guardian where userId = '${id}'`;

    pool.query(query, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (!result) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, fetch user by id: no record found`
        // );
        return res
          .status(200)
          .json({ success: 1, error: "fetch user by id: no record found" });
      }
      // logger.info(`${req.method} ${req.originalUrl}, fetch user by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  getUsers: (req, res) => {
    let sqlQuery = `select * from users`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all users`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all users`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },
  schoolinfo: (req, res) => {
    let sqlQuery = `select * from school`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all users`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all users`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },
  schoolinfoupdate: (req, res) => {
    let data = req.body;

    let sqlQuery =
      data.id == null
        ? `insert into school (name,address,contact1,contact2,email) values('${data.name}','${data.address}','${data.contact1}','${data.contact2}','${data.email}')`
        : `update school set name='${data.name}',address='${data.address}',contact1='${data.contact1}',contact2='${data.contact2}',email='${data.email}',name='${data.name}' where id = '1'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all users`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all users`
      // );
      let sqlQuery = `select * from school limit 1 `;
      pool.query(sqlQuery, (error, result) => {
        res.status(200).json({ success: 1, data: result });
      });
    });
  },

  getAllStaff: (req, res) => {
    let sqlQuery = `select * from staff left join users on staff.userId = users.userId  where users.role = 'staff'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all users`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all users`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },
  getuserdata: async (req, res) => {
    let data = req.body;
    const promise5 = await new Promise((resolve, reject) => {
      let sqlQuery = `select userid from guardian where student_id = '${data.id}' `;
      pool.query(sqlQuery, (error, result) => {
        if (error) {
         // reject('error')
          return res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
        }
        console.log(result);
        resolve(result);
      });
    });
    let arr = promise5
    //  if(data.role=='student')
    // select * from student left join users on student.userId = users.userId where student.userId = 'z0puvv';
    const promise9 = await new Promise((resolve, reject) => {
      let sqlQuery = `select email, pass from users where userId = '${data.userid}' `;
      pool.query(sqlQuery, (error, result) => {
        if (error) {
         // reject('error')
          return res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
        }
        console.log(result);
        resolve(result);
      });
    });
    const promise7 = await new Promise((resolve, reject) => {
      let sqlQuery = `select email, pass from users where userId = '${data.userid}' `;
      pool.query(sqlQuery, (error, result) => {
        if (error) {
         // reject('error')
          return res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
        }
        console.log(result);
        resolve(result);
      });
    });
    const promise8 = await new Promise((resolve, reject) => {
      let sqlQuery = `select email, pass from users where userId = '${data.userid}' `;
      pool.query(sqlQuery, (error, result) => {
        if (error) {
         // reject('error')
          return res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
        }
        console.log(result);
        resolve(result);
      });
    });
    console.log(promise8)
    let sqlQuery = `select * from guardian  where student_id = '${data.id}' `;
    console.log(sqlQuery);

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all users`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all users`
      // );
      result.password = "";
      res.status(200).json({ success: 1, data: result ,info:promise8, info1:promise9,info2:promise7 });
    });
  },
  getOTPpin: (req, res) => {
    const id = parseInt(req.params.userId);
    let sqlQuery = `select pincode from users where userId = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, get pin user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (!result) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, fetch pin by user id: no record found`
        // );
        return res
          .status(200)
          .json({ success: 1, error: "fetch pin by id: no record found" });
      }
      // logger.info(`${req.method} ${req.originalUrl}, fetch pin by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  resetOTP: (req, res) => {
    const userPin = Math.floor(Math.random() * 9000 + 1000);
    const id = parseInt(req.params.userId);
    let sqlQuery = `update users set pincode = ${userPin} where userId = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, reset pin user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, fetch pin by user id: no user record found`
        );
        return res
          .status(200)
          .json({ success: 1, error: "fetch pin by id: no user record found" });
      }

      // logger.info(`${req.method} ${req.originalUrl}, update user pin by id`);
      return res.status(200).json({
        success: 1,
        message: "OTP updated successfully",
        data: userPin,
      });
    });
  },
  updatestaff: async(req, res) => {
    const data = req.body;
console.log(data)

const saltRounds = 10;

let password = await bcrypt.hash(data.password, saltRounds);
    let sqlQuery = data.password == null ? `update users set email ='${data.email}',createdBy='${data.createdBy}',role='${data.role}',rolecode='${data.rolecode}' where userId = '${data.userId}'` :`update users set email ='${data.email}',createdBy='${data.createdBy}',role='${data.role}',rolecode='${data.rolecode}',password='${password}' where userId = '${data.userId}'`;

    pool.query(sqlQuery, (error, result) => {
      console.log(sqlQuery)
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update user data`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, update user data: no record found`
        // );
        return res
          .status(200)
          .json({ success: 0, error: "update user data: no record found" });
      }

      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, update user data`);


        let sqlQuery = `update staff set sEmail ='${data.email}',sFirstName='${data.fname}',sLastName='${data.lname}',contact1='${data.contact1}',contact2='${data.contact2}',sGender ='${data.sex}',rolecode='${data.rolecode}' where userId = '${data.userId}'`;

       
    
        pool.query(sqlQuery, (error, result) => {
          console.log(result);
          console.log(error);
          if (error) {
            // logger.info(
            //   `${req.method} ${req.originalUrl}, 'server error', fetch all users`
            // );
    
            return res
              .status(500)
              .json({ success: 0, error: "internal server error", message: error });
          }
        });


        return res
          .status(200)
          .json({ success: 1, error: "update user data success" });
      }
    });
  },
  updateUsers: (req, res) => {
    const data = req.body;

    let sqlQuery = `update users set email ='${data.email}',firstName='${data.firstName}',lastName='${data.lastName}',otherName='${data.otherName}',contact1='${data.contact1}',contact2='${data.contact2}',gender ='${data.gender}',createdBy='${data.createdBy}',role='${data.role}',active='${data.active}' where userId = '${data.userId}'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update user data`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, update user data: no record found`
        // );
        return res
          .status(200)
          .json({ success: 0, error: "update user data: no record found" });
      }

      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, update user data`);
        return res
          .status(200)
          .json({ success: 1, error: "update user data success" });
      }
    });
  },

  verifymail: (req, res) => {
    const body = req.body;

    //check if email exists
    getUserByEmail(body.email, (err, results) => {
      if (results == undefined) {
        console.log(err);
        return res.status(200).json({
          success: 0,
          message: "Link Error: Email Mismatch",
          data: [],
        });
      }
      console.log(body.email);
      console.log(body.token);
      // console.log(results.token);

      //check if token code matches code in db
      try {
        var decoded = jwt.verify(body.token, process.env.JWT_KEY);
      } catch (err) {
        return res.status(200).json({
          success: 0,
          message: "Lnk Expired/Error",
        });
      }

      console.log(decoded);
      if (results.email === decoded.data) {
        //update status in db
        let sqlQuery = `update users set verified='true' where email = '${body.email}'`;
        pool.query(sqlQuery, (error, result) => {
          if (error) {
            // logger.info(
            //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, verify email by token`
            // );
            return res.status(500).json({
              success: 0,
              error: "internal server error",
              message: error,
            });
          }

          // logger.info(
          //   `${req.method} ${req.originalUrl}, verify email by jwt signed token successful`
          // );
          res.status(200).json({ success: 1, data: result });
        });
      } else {
        //throw error when code mismatches
        return res.status(200).json({
          success: 0,
          message: "Link Error - code mismatch",
        });
      }
      const data = results.email;
      console.log(data);
    });
  },
  //it takes email, token sent by mail and new password to update existing password
  resetPassword: (req, res) => {
    const body = req.body;
    getUserByEmail(body.email, (err, results) => {
      if (err) {
        console.log(err);
      }
      if (!results) {
        return res.status(200).json({
          success: 0,
          data: "Invalid email or password",
        });
      }
      //checking wether posted token is the correct signed token
      try {
        var decoded = jwt.verify(body.token, process.env.JWT_KEY);
      } catch (err) {
        return res.status(200).json({
          success: 0,
          message: "Lnk Expired/Error",
        });
      }

      console.log(decoded);
      if (decoded.data === results.email) {
        const salt = bcrypt.genSaltSync(10);
        body.password = bcrypt.hashSync(body.password, salt);
        let sqlQuery = `update users set password = ${body.password} where email = ${body.email}`;
        pool.query(sqlQuery, (error, result) => {
          if (error) {
            // logger.info(
            //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update user password`
            // );
            return res.status(500).json({
              success: 0,
              error: "internal server error",
              message: error,
            });
          }

          if (result.affectedRows != 1) {
            // logger.info(
            //   `${req.method} ${req.originalUrl}, update user password: no user record found`
            // );
            return res.status(200).json({
              success: 0,
              error: "update user password: no user record found",
            });
          }
          if (result.affectedRows == 1) {
            // logger.info(
            //   `${req.method} ${req.originalUrl}, update user password success`
            // );
            return res.status(200).json({
              success: 1,
              message: "update user password successfully",
            });
          }
        });
      } else {
        return res.status(200).json({
          success: 1,
          message: "link Error",
        });
      }
    });
  },

  //responsible for verifying email exist and then send out an email
  mailPasswordreset: (req, res) => {
    const body = req.body;
    getUserByUserEmail(body.email, (err, results) => {
      if (!results) {
        return res.status(200).json({
          success: 0,
          message: "Invalid email or password",
          data: [],
        });
      }
      if (!err) {
        const signedToken = jwt.sign(
          { data: results.email },
          process.env.JWT_KEY,
          {
            expiresIn: "1h",
          }
        );
        console.log(signedToken);
        var mailOptions = {
          from: 'Support "seedo@seedogh.com"',
          to: body.email,
          subject: "Password Reset",
          html: `<h2>Kindly follow link to reset your password</h2>
      <h4>Please ignore this mail if you did not request for password reset</h2>
      <h4>Link expires in 1 hour</h2>
      `,
        };
        transporter.sendMail(mailOptions, function (error, info) {
          if (error) {
            console.log("mail not sent");
            return res.status(200).json({
              success: 0,
              Error: "mail not sent - internet Connectivity issue",
              data: [],
            });
          } else {
            console.log("verification mail sent");
            return res.status(200).json({
              success: 1,
              message: "verification mail sent",
              data: [],
            });
          }
        });
      }
    });
  },
  activeStaff: (req, res) => {
    const id = req.params.id;
    console.log(id);
    let sqlQuery = `update staff set active ='True' where userId = '${id}'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete subject by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete subject by  id: no subject record found`
        // );
        return res.status(200).json({
          success: 0,
          error: "delete subject by id: no subject record found",
        });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete subject  by id`);
        let sqlQuery1 = `update users set isActive ='True' where userId = '${id}'`;
        pool.query(sqlQuery1, (error, result) => {
          console.log(result.affectedRows);
        });

        let sqlQuery = `select * from staff left join users on staff.userId = users.userId  where users.role = 'staff'`;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
  InactiveStaff: (req, res) => {
    const id = req.params.id;
    console.log(id);
    let sqlQuery = `update staff set active ='false' where userId = '${id}'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete subject by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete subject by  id: no subject record found`
        // );
        return res.status(200).json({
          success: 0,
          error: "delete subject by id: no subject record found",
        });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete subject  by id`);
        let sqlQuery1 = `update users set isActive ='False' where userId = '${id}'`;
        pool.query(sqlQuery1, (error, result) => { });

        let sqlQuery = `select * from staff left join users on staff.userId = users.userId  where users.role = 'staff'`;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
  deleteStaff: (req, res) => {
    const id = req.params.id;
    console.log(id);
    let sqlQuery = `delete from staff where userId = '${id}'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete subject by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete subject by  id: no subject record found`
        // );
        return res.status(200).json({
          success: 0,
          error: "delete subject by id: no subject record found",
        });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete subject  by id`);
        let sqlQuery1 = `delete from users where userId = '${id}'`;
        pool.query(sqlQuery1, (error, result) => { });

        let sqlQuery = `select * from staff left join users on staff.userId = users.userId  where users.role = 'staff'`;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },

  deleteUser: (req, res) => {
    const id = req.body;
    let sqlQuery = `delete from users where userId = '${id.userId}'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete user by user id: no user record found`
        // );
        return res.status(200).json({
          success: 0,
          error: "delete user by id: no user record found",
        });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete user pin by id`);
        return res.status(200).json({
          success: 1,
          message: "user deleted successfully",
        });
      }
    });
  },
};
