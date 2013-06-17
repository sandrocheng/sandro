.class Lcom/antivirus/wipe/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/wipe/b;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/b;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/z;->a:Lcom/antivirus/wipe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/wipe/z;->a:Lcom/antivirus/wipe/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/antivirus/wipe/b;->a(Lcom/antivirus/wipe/b;I)I

    iget-object v0, p0, Lcom/antivirus/wipe/z;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->l(Lcom/antivirus/wipe/b;)V

    return-void
.end method
