pragma solidity ^0.4.2;


contract Adoption {

    struct Man {

       // string hashcode;
        //string id;
        string f_name;
        string l_name;
        string email;
        }
    struct Man2{
        string b_day;
        string gender;
        string occupation;
        string blood_group;
        string marital_status;
        }
    struct Man3{
        string state;
        string city;
        string country;
        string home_address;
        string current_address;
        string phone_no;
    }

    mapping (address => Man) public Mans;
    address[] public ManAccts;
    //uint public count = 3;

   // mapping (address => Man4) public Mans4;

    mapping (address => Man2) public Mans2;

    mapping (address => Man3) public Mans3;

    function basic_details(address _address, string _f_name, string _l_name, string _email){
      var man = Man[_address];

      man.f_name = _f_name;
      man.l_name = _l.name;
      man.email = _email;

      ManAccts.push(_address)-1;
    }
    function personal_details(address _address, string _b_day, string _gender, string _occupation, string _blood_group, string _marital_status){
      var man =Mans2[_address];

      man.b_day= _b_day;
      man.gender= _gender;
      man.occupation = _occupation;
      man.blood_group = _blood_group;
      man.marital_status = _marital_status;

      ManAccts.push(_address)-1;
    }

    function contact_details(address _address, string _home_address, string _current_address, string _country, string _state, string _city, string _phone_no){
      var man = Mans3[_address];

      man.home_address = _home_address;
      man.current_address = _current_address;
      man.country = _country;
      man.state = _state;
      man.city = _city;
      man.phone_no = _phone_no;

      ManAccts.push(_address)-1;

    }
   /* function saveHashcode(address _address, string _hashcode, string _id) public {

      var man = Mans[_address];

      man.hashcode = _hashcode;
      man.id = _id;
      ManAccts.push(_address)-1;

    }*/


    function getHashcode(address _address) view public returns (string) {
        return (Mans[_address].hashcode);
    }

}