.class Lcom/antivirus/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/antivirus/core/scanners/j;


# instance fields
.field final synthetic a:Lcom/antivirus/g;


# direct methods
.method constructor <init>(Lcom/antivirus/g;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/i;->a:Lcom/antivirus/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/c;)V
    .locals 3

    const v0, 0x7f090152

    invoke-virtual {p1}, Lcom/antivirus/core/scanners/h;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f090153

    :cond_0
    iget-object v1, p0, Lcom/antivirus/i;->a:Lcom/antivirus/g;

    const v2, 0x7f090154

    invoke-static {v1, v2, v0}, Lcom/antivirus/g;->a(Lcom/antivirus/g;II)V

    iget-object v0, p0, Lcom/antivirus/i;->a:Lcom/antivirus/g;

    invoke-virtual {v0, p1, p2}, Lcom/antivirus/g;->a(Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/c;)V

    return-void
.end method
