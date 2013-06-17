.class Lcom/antivirus/wipe/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/wipe/t;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/t;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/u;->a:Lcom/antivirus/wipe/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/wipe/u;->a:Lcom/antivirus/wipe/t;

    iget-object v0, v0, Lcom/antivirus/wipe/t;->c:Lcom/antivirus/wipe/b;

    iget-object v1, p0, Lcom/antivirus/wipe/u;->a:Lcom/antivirus/wipe/t;

    iget-object v1, v1, Lcom/antivirus/wipe/t;->b:Landroid/view/LayoutInflater;

    invoke-static {v0, v1}, Lcom/antivirus/wipe/b;->a(Lcom/antivirus/wipe/b;Landroid/view/LayoutInflater;)V

    return-void
.end method
