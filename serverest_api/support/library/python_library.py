import requests as req
from faker import Faker
import json

fakeobject = Faker()

def Get_All_Users_By_Authorization():
    number_users = Get_Number_Of_Register_Users()
    total_users = int(number_users)

    authorization_false = []

    for user in range(total_users):
        request = req.get("http://localhost:3000/usuarios")
        get_user = request.json()

        if get_user["usuarios"][user]["administrador"] == 'false':
            authorization_false.append(get_user["usuarios"][user])
    return authorization_false


def Get_Number_Of_Register_Users():
    request = req.get("http://localhost:3000/usuarios")
    json = request.json()
    return json["quantidade"]

def Create_User_Data(number):
    user_data ={}    
    
    for i in range(0, number):
      user_data[i]={}
      user_data[i]['nome']= fakeobject.name()
      user_data[i]['email']= fakeobject.email()
      user_data[i]['password']= fakeobject.password()
      user_data[i]['administrador']= str(fakeobject.boolean()).lower()
      print(user_data)

    with open('./serverest_api/support/fixtures/static/generated_users.json', 'w') as fp:
      json.dump(user_data, fp, indent=4)

def Post_Dynamic_Users(number):

  with open('./serverest_api/support/fixtures/static/generated_users.json') as user_file:
    json_user_file = json.load(user_file)
  
  save_user_id = []

  for user in range(number):
    request = req.post(url="http://localhost:3000/usuarios", data=json_user_file[str(user)])
    post_user = request.json()
    save_user_id.append(post_user["_id"])
  
  return save_user_id

def Delete_Users(list_id):
  print(list_id)

  for user_id in range(len(list_id)):
    request = req.delete(url=f"http://localhost:3000/usuarios/{list_id[user_id]}")
    delete_user = request.json()

  return list_id, delete_user, request

