variable "access_key" {
default =" "
}
variable "secret_key" {
 default = " "
}
variable "ami" {
type=list
default=["asdsadasc","ami-07efac79022b86107","dcsa"]
}
variable "instancetype" {
type=list
default=["t2.nano","t2.large","t2.micro"]
}
variable "name" {
type=list
default=["dev","prod","stage"]
}
