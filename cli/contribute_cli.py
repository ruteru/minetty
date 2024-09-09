import typer
import subprocess

app = typer.Typer()

@app.command()
def setup():
    """Setup the development environment."""
    subprocess.run(['ansible-playbook', 'ansible/playbooks/setup.yml'], check=True)

@app.command()
def create_problem(problem_name: str):
    """Create a new problem."""
    subprocess.run(['ansible-playbook', 'ansible/playbooks/create_problem.yml', '-e', f'problem_name={problem_name}'], check=True)

@app.command()
def test():
    """Run tests for the CLI."""
    subprocess.run(['pytest', 'tests/test_cli.py'], check=True)

if __name__ == "__main__":
    app()
