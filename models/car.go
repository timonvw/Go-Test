package models

type Car struct{}

//Test is aids
func (m *Car) Test() string {
	return "Ik ben een auto, vroooom"
}
