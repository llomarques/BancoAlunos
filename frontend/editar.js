const urlParametro = new URLSearchParams(window.location.search)
const id = urlParametro.get("id")

console.log("ID do aluno para editar: ", id);

const inputID = document.getElementById("id");
inputID.value = id;

const inputNome = document.getElementById("nome")
const inputCpf = document.getElementById("cpf")
const inputCep = document.getElementById("cep")
const inputUf = document.getElementById("uf")
const inputRua = document.getElementById("rua")
const inputNumero = document.getElementById("numero")
const inputComplemento = document.getElementById("complemento")
const formAluno = document.getElementById("form-aluno")

const API = `http://localhost:3000/alunos`

async function carregarAluno() {
    if (!id) {
        alert("não foi selecionado nenhum aluno para editar")
        throw new Error("ID do aluno não encontrado na URL.");
    }
    const resposta = await fetch(`${API}/${id}`);
    const ALUNO = await resposta.json();
    console.log(ALUNO);

    document.getElementById("nome").value = ALUNO[0].nome;
    document.getElementById("cpf").value = ALUNO[0].cpf;
    document.getElementById("cep").value = ALUNO[0].cep;
    document.getElementById("uf").value = ALUNO[0].uf;
    document.getElementById("rua").value = ALUNO[0].rua;
    document.getElementById("numero").value = ALUNO[0].numero;
    document.getElementById("complemento").value = ALUNO[0].complemento;

    

    formAluno.addEventListener("submit", salvar)
}

async function salvar(e) {
    e.preventDefault();

    if (!inputNome.value.trim() || !inputCpf.value.trim() || !inputNumero.value.trim()) {
        alert("Preencha os campos obrigatórios: Nome, CPF e Número.");
        return;
    }

    const alunoAtualizado = {
        nome: inputNome.value.trim(),
        cpf: inputCpf.value.trim(),
        cep: inputCep.value.trim(),
        uf: inputUf.value.trim(),
        rua: inputRua.value.trim(),
        numero: inputNumero.value.trim(),
        complemento: inputComplemento.value.trim()
    };

    try {
        const resposta = await fetch(`${API}/${id}`, {
            method: "PUT",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(alunoAtualizado)
        });

        if (resposta.ok) {
            alert("Aluno atualizado com sucesso!");
            // redireciona de volta para a lista
            window.location.href = "index.html";
        } else {
            console.error("Erro na requisição:", resposta.status);
            alert("Erro ao atualizar o aluno.");
        }
    } catch (error) {
        console.error("Erro no fetch:", error);
        alert("Erro de conexão com o servidor.");
    }
}

formAluno.addEventListener("submit", salvar);

// Carrega os dados do aluno assim que a página abre
carregarAluno();