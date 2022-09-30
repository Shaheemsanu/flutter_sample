

void main() {
 String name='MOHAMMED';
  
  for(int i=0;i<name.length;i++){
    if(name[i]==' '){
     print('${name[i+1]}');  
    }else if(i==0){
      print('${name[0]}'); 
      
    }
  }
}
