.class Lcom/antivirus/wipe/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/wipe/b;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/b;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/g;->a:Lcom/antivirus/wipe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/g;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->l(Lcom/antivirus/wipe/b;)V

    return-void
.end method
