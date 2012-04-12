package bean;

public class Feriado {

	private String name;
	private String date;
	private String type;
	
	public Feriado(){
		
	}
	
	public Feriado(String name, String date, String type){
		this.name = name;
		this.date = date;
		this.type = type;
	}

	public String toString(){
		return this.name + " em " +this.date+" de abrangência "+this.type;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
}
