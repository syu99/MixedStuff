#include <fstream>
#include <string>
#include <iostream>
#include "DataBase.hh"
#include "File.hh"
#include "Packet.hpp"
#include "ClientPacket.hh"

bool		OpenOCreate(std::fstream &file, const std::string &name)
{
  const char	*str = name.c_str();

  file.open(str,
	    std::fstream::in |
	    std::fstream::out |
	    std::fstream::binary);
  if (!file.is_open())
    {
      file.open(str,
		std::fstream::in |
		std::fstream::out |
		std::fstream::binary |
		std::fstream::trunc);
      return (true);
    }
  return (false);
}

void	teststr(int ac, char **av)
{
  std::fstream	file;

  OpenOCreate(file, "test");

  StrPacket	test;
  test.setValue(ac < 2 ? "test1" : av[1]);
  std::cout << test.getValue() << std::endl;
  file << test;
  test.setValue(ac < 3 ? "test2" : av[2]);
  file << test;
  test.setValue(ac < 3 ? "test3" : av[2]);
  std::cout << test.getValue() << std::endl;
  file.seekg(0, file.beg);
  file >> test;
  std::cout << test.getValue() << std::endl;

}

void	testInt()
{
  IntPacket	test;
  std::fstream	file;

  OpenOCreate(file, "test2");
  test.setValue(0);
  file << test;
  test.setValue(55);
  file << test;
  test.setValue(66);
  file << test;
  test.setValue(47);
  file << test;
  test.setValue(28);
  file << test;

  file.seekg((2 * sizeof(int)), file.beg);
  file >> test;
  std::cout << test.getValue() << std::endl;
}

void	testClient()
{
  std::fstream	file;
  ClientPacket	man;

  if (OpenOCreate(file, "test3") && file.is_open())
    {
      man.setValues("zelda", "hello world", 0);
      file << man;
      man.setValues("link", "passwd", 1);
      file << man;
      man.setValues("plop", "passwd", 2);
      file << man;
      man.setValues("plop", "passwd", 2);
      file << man;
      man.setValues("plop", "passwd", 2);
      file << man;
      man.setValues("linkazejazejaozijeaozijeoazjeoazijeoazjeoazijeoazije",
		    "anotherpasswzdhaohdoaidhaodhaizdhaiudhauidhauizhdiaudhaudd", 3);
      file << man;
    }

  file.seekg(ClientPacket::getSize() * 1, file.beg);
  file >> man;
  file >> man;

  std::cout << "ID : " << man.getOffset() << std::endl
	    << "NAME : " << man.getLogin() << std::endl;
}


// void	testFileFStream()
// {
//   std::cout << "---------#############START############--------" << std::endl;

//   File file;

//   file.openOCreate("plop");
//   // std::cout << "open : " << std::boolalpha << file->is_open() << std::endl;
//   // *file << "hello\n";
//   // file->close();
//   // std::cout << "close : " << std::boolalpha << file->is_open() << std::endl;

//   StrPacket	test;

//   file.reset();
//   test.setValue("test1\n");
//   file << test;
//   test.setValue("test2\n");
//   file << test;
//   test.setValue("test3");
//   file << test << std::endl;
//   file.reset();
//   test.setValue("ERROR");


//   std::cout << "---------------------" << std::endl;
//   file >> test;
//   std::cout << "## Received " << '[' << test.getValue() << ']' << std::endl;
//   file >> test;
//   std::cout << "## Received " << '[' << test.getValue() << ']' << std::endl;
//   file >> test;
//   std::cout << "## Received " << '[' << test.getValue() << ']' << std::endl;
//   file.reset();
//   file >> test;
//   std::cout << "## Received " << '[' << test.getValue() << ']' << std::endl;
//   file >> test;
//   std::cout << "## Received " << '[' << test.getValue() << ']' << std::endl;
// }

#include <ctype.h>
void	testDataBase()
{
  DataBase base;
  ClientPacket pack;
  std::string friends[2] =
    {
      "machin",
      "machine"
    };
  std::string values[6] =
    {
      "machin",
      "machine",
      "muche",
      "truc",
      "trac",
      "bidule",
    };
  for (int i = 0; i < 6; ++i)
    {
      std::cout << '[' << values[i] << ']' << std::endl;
      try { base.addClient(values[i], "hello"); }
      catch (std::exception &ex) {std::cout << ex.what() << std::endl;}
    }
  for (int i = 0; i < 6; ++i)
    {
      try { std::cout << base.getClient(values[i]).getLogin() << std::endl; }
      catch (std::exception &ex) {std::cout << ex.what() << std::endl;}
    }
<<<<<<< HEAD:DataBase/main.cpp
=======
<<<<<<< HEAD
  pack.setValues(values[5], "hello");
  std::cout << "Add friend [" << friends[0] << "] for : [" << pack.getLogin() << "]" << std::endl;
  base.addContact(pack, friends[0]);
=======
>>>>>>> client:src/DataBase/main.cpp
  std::cout << "------------- ADD FRIEND --------------" << std::endl;
  for (int i = 0; i < 6; ++i)
    {
      std::cout << "##### [" << static_cast<char>(::toupper(values[i][0])) << "] #####" << std::endl;
      pack.setValues(values[i], "hello");
      for (int j = 0; j < 2; ++j)
	{
	  try
	    {
	      std::cout << "-----" << std::endl;
	      std::cout << "Add friend [" << friends[j] << "] for : ["
			<< pack.getLogin() << "]" << std::endl;
	      base.addContact(pack, friends[j]);
	    }
	  catch (std::exception &ex)
	    {
	      std::cout << ex.what() << std::endl;
	    }
	}
    }
  std::cout << "------------- REMOVE FRIEND  ---------------" << std::endl;
  for (int i = 0; i < 6; i += 2)
    {
      std::cout << "##### [" << static_cast<char>(::toupper(values[i][0])) << "] #####" << std::endl;
      pack.setValues(values[i], "hello");
      for (int j = 0; j < 2; ++j)
<<<<<<< HEAD:DataBase/main.cpp
  	{
  	  try
  	    {
  	      std::cout << "-----" << std::endl;
  	      std::cout << "Remove friend [" << friends[j] << "] for : ["
  			<< pack.getLogin() << "]" << std::endl;
  	      base.removeContact(pack, friends[j]);
  	    }
  	  catch (std::exception &ex)
  	    {
  	      std::cout << ex.what() << std::endl;
  	    }
  	}
    }
  std::cout << "--------------- QI SAIS KE C'ES MAIS Z'AMMI ? -------------" << std::endl;
  for (int i = 0; i < 6; ++i)
    {
      std::cout << "---[" << values[i] << "]---" << std::endl;
      std::list<std::string> meszami;
      pack.setValues(values[i], "hello");
      base.getContactList(pack, meszami);
      while (!meszami.empty())
	{
	  std::cout << "Bonjour l'ami de [" << values[i] << "]: " << meszami.front() << std::endl;
	  meszami.pop_front();
	}
    }
}

void	testDataBase()
{
  DataBase base;
  std::string one("oaaaaaa");
  std::string two("obbbbbb");
  std::string pass("pass");
  std::list<std::string> amis;

  try { base.addClient(one, pass); }
  catch (std::exception &ex) {std::cout << ex.what() << std::endl;}
  try { base.addClient(two, pass); }
  catch (std::exception &ex) {std::cout << ex.what() << std::endl;}

  ClientPacket pack(one, pass);
  std::cout << "START ADD CONTACT" << std::endl;
  base.addContact(pack, two);
  std::cout << "FIN ADD CONTACT" << std::endl;

  base.getContactList(pack, amis);
  std::cout << "FIN RESEARCH" << std::endl;
  while (!amis.empty())
    {
      std::cout << "[" << one << "] ami avec [" << amis.front() << ']' << std::endl;
      amis.pop_front();
    }
  std::cout << "FIN LIST" << std::endl;

  std::cout << "----- REMOVE FRIEND ------" << std::endl;

  base.removeContact(pack, two);
  std::cout << "FIN ERASED" << std::endl;
  base.getContactList(pack, amis);
  std::cout << "FIN RESEARCH" << std::endl;
  while (!amis.empty())
    {
      std::cout << "[" << one << "] ami avec [" << amis.front() << ']' << std::endl;
      amis.pop_front();
    }
  std::cout << "FIN LIST" << std::endl;
=======
	{
	  try
	    {
	      std::cout << "-----" << std::endl;
	      std::cout << "Remove friend [" << friends[j] << "] for : ["
			<< pack.getLogin() << "]" << std::endl;
	      base.removeContact(pack, friends[j]);
	    }
	  catch (std::exception &ex)
	    {
	      std::cout << ex.what() << std::endl;
	    }
	}
    }
  std::cout << "--------------- QI SAIS KE C'ES MAIS Z'AMMI ? -------------" << std::endl;
  std::list<std::string> meszami;
  pack.setValues(values[0], "hello");
  base.getContactList(pack, meszami);
  while (!meszami.empty())
    {
      std::cout << "Bonjour l'ami de [" << values[0] << "]: " << meszami.front() << std::endl;
      meszami.pop_front();
    }
>>>>>>> server
>>>>>>> client:src/DataBase/main.cpp
}

int	main(int ac, char **av)
{
  std::cout << std::boolalpha;
  testDataBaseFull();
  return (0);
}
