.class Lcom/antivirus/ui/privacy/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/privacy/c;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/privacy/c;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/privacy/d;->a:Lcom/antivirus/ui/privacy/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/d;->a:Lcom/antivirus/ui/privacy/c;

    iget-object v0, v0, Lcom/antivirus/ui/privacy/c;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v0}, Lcom/antivirus/ui/privacy/b;->v(Lcom/antivirus/ui/privacy/b;)Lcom/antivirus/ui/privacy/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/privacy/h;->notifyDataSetChanged()V

    return-void
.end method
