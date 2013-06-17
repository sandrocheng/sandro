.class Lcom/antivirus/wipe/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/wipe/b;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/b;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/o;->a:Lcom/antivirus/wipe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/o;->a:Lcom/antivirus/wipe/b;

    iget-object v0, v0, Lcom/antivirus/wipe/b;->a:Lcom/antivirus/wipe/ak;

    invoke-virtual {v0}, Lcom/antivirus/wipe/ak;->b()V

    return-void
.end method
