# Go-Crud-API

GO API with all the CRUD operations

Prerequisites
get mux package i.e go get 	"github.com/gorilla/mux".
This needs to be done inside the project folder.Also command will work only where go is installed .i.e you need to create the project onside go>src

STRUCTS
- can hold different data types 
- type structName struct {
 name type value  
 }
- '*' used for pointers and it refences a variable  , & used to get the value of that variable

SPLICE
- is an arry of dynamic size
- var names[] type
- names=append(names,new_var)//ADD
- names=append(names[:index],names[index+1:]...) //DELETE deletes values at names[index] and keeps the rest i.e names[index+1]

MUX HTTP
- HandleFunc("route",function name).Methods("type of method ")
- to start a server use ListenAndServe(":port", routerName) //refer main function
- HandleFunc syntax is :- func Name(w http.ResponseWriter,r * http.Request){ //code }
- params stored in mux.Vars(r)

JSON
- w.Header().set("Content-Type","application/json")  //sets content type to json
- json.NewEncoder(w).Encode(data)
- json.NewDecoder(r.body).Decode(data received)

GENERAL
- for index,item:=range array/splice{}  //if index is not used replace with _

