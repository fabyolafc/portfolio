document.addEventListener('DOMContentLoaded', () => {
    const botaoMostrarCertificados = document.querySelector('.btn-mostrar-certificados');

    botaoMostrarCertificados.addEventListener('click', () => {
        mostrarMaisCertificados();
    });

    function mostrarMaisCertificados() {
        // Atualize a lista de certificados inativos
        const certificadosInativos = document.querySelectorAll('.certificados-box:not(.ativo)');

        // Adicione a classe "ativo" aos certificados inativos
        certificadosInativos.forEach(certificadoInativo => {
            certificadoInativo.classList.add('ativo');
        });

        // Verifique se ainda há certificados inativos
        if (document.querySelectorAll('.certificados-box:not(.ativo)').length === 0) {
            esconderBotao();
        }
    }

    function esconderBotao() {
        botaoMostrarCertificados.classList.add("remover");
    }
});
