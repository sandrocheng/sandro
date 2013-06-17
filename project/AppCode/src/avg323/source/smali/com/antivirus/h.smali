.class Lcom/antivirus/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/antivirus/core/scanners/j;


# instance fields
.field final synthetic a:Lcom/antivirus/g;


# direct methods
.method constructor <init>(Lcom/antivirus/g;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/h;->a:Lcom/antivirus/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/c;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/h;->a:Lcom/antivirus/g;

    invoke-virtual {v0, p1, p2}, Lcom/antivirus/g;->a(Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/c;)V

    return-void
.end method
