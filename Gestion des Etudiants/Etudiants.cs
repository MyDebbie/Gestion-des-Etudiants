using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;



namespace Gestion_des_Etudiants
{
    public class Etudiants
    {
        String _nom;
        String _prenom;
        String _adresse;
        String _ddn;
        String _email;
        String _telephone;
      //  DateTime _dateCree;

        public Etudiants(String _nom, String _prenom1, String _adress, String _ddn, String _email, String _telephone )
        {
            Nom = _nom;
            Prenom = _prenom1;
            Adresse = _adress;
            DDN = _ddn;
            Email = _email;
            Telephone = _telephone;
        }
        TextInfo textInfo = CultureInfo.CurrentCulture.TextInfo;
        public String Nom   // property
        {
            get { return textInfo.ToTitleCase(_nom.ToLower()); }   // get method
            set { _nom = value; }  // set method
        }

        public string Prenom
        {
            get { return textInfo.ToTitleCase(_prenom.ToLower()); }
            set { _prenom = value; }
        }
        public string Adresse
        {
            get { return _adresse; }
            set { _adresse = value; }
        }
        public string DDN
        {
            get { return _ddn; }
            set { _ddn = value; }
        }
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        public string Telephone
        {
            get { return _telephone; }
            set { _telephone = value; }
        }
        //public DateTime DateCree
        //{
        //    get { return _dateCree; }
        //    set { _dateCree = value; }
        //}

    }


}