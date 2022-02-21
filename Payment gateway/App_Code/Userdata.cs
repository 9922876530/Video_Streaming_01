using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Userdata
/// </summary>
public class Userdata
{
    string txnid { get; set; }

    string status { get; set; }

    public static string ClientPageURL = "https://localhost:8080/IdiotBox/user/login";

    //public static string WalletPageURL = "http://localhost:8085/IdiotBox/user/login";
    public static string ClientAccno = "3245443343437887";
}