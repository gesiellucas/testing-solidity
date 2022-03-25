pragma solidity 0.4.18;

contract Notas {
    // <dataType> <arrayName[size] = <initialization>

    uint[6] data1;

    function array_example() public returns (
    int[5] memory, uint[6] memory) {
        int[5] memory data
        = [int(50), -63, 77, -28, 90];
        data1
        = [uint(10), 20, 30, 40, 50, 60];

        return (data, data1);
    }
}

contract Types {
    uint[] data
    = [10, 20, 30, 40, 50];
    int[] data1;

    function dynamic_array() public returns(
    uint[] memory, int[] memory){
        data1
        = [int(-60), 70, -80, 90, 100, -2, 1, 0];
        
        return (data, data1);
    }
}

contract Operation {
    uint[6] data;

    function array_example() public payable returns(uint[6] memory) {
        data = [uint(10), 20, 30, 40, 50, 60];

        return data;
    }

    function array_element() public payable returns (uint) {
        uint x = data[2];

        return x;
    }
}

contract Maps {
    struct street {
        string name;
        string neighboor;
        uint8 number;
    }

    mapping (address => street) result;

    address[] public student_result;
}

contract Escola {
    struct escolas {
        string nome;
        string cidade;
        uint8 idade;
    }

    mapping(address => escolas) candidato;
    address[] public escola_escolhida;

    function adding_values() public returns (address) {
        escolas memory regina = candidato[0xDEE7796E89C82C36BAdd1375076f39D69FafE252];
        regina.nome = "Escola Estadual do Regina";
        regina.cidade = "Cabo Frio";
        regina.idade = 108;
        escola_escolhida.push(0xDEE7796E89C82C36BAdd1375076f39D69FafE252);
        // return regina;
        return 0xDEE7796E89C82C36BAdd1375076f39D69FafE252;
    }
}

contract mapping_example {
    struct student {
        string name;
        string subject;
        uint8 marks;
    }

    mapping (address => student) result;
    address[] student_result;

    function adding_values(address _tokenId) public {
        student storage piper = result[_tokenId];
        piper.name = "Jhon";
        piper.subject = "Chemisty";
        piper.marks = 88;
        student_result.push(_tokenId);
    }

    function get_student_result() view public returns (address[]) {
        return student_result;
    }
}

contract Coco {
    struct student {
        string name;
        string subject;
        uint8 marks;
    }

    mapping (address => student) result;

    address[] student_result;

    function adding_values() public {
        student storage guy = result[0xDEE7796E89C82C36BAdd1375076f39D69FafE252];
        guy.name = "Marcelo";
        guy.subject = "Bio";
        guy.marks = 12;
        student_result.push(0xDEE7796E89C82C36BAdd1375076f39D69FafE252) - 1;
    }

    function get_student_result() view public returns (address[]) {
        return student_result;
    }

    function count_students() view public returns (uint) {
        return student_result.length;
    }
}
