.class public Lcom/antivirus/ui/scan/results/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/antivirus/ui/scan/results/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/ui/scan/results/k;->c:Z

    iput-object p1, p0, Lcom/antivirus/ui/scan/results/k;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/antivirus/ui/scan/results/l;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/results/k;->d:Lcom/antivirus/ui/scan/results/l;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/results/k;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/ui/scan/results/k;->c:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/results/k;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/ui/scan/results/k;->c:Z

    return v0
.end method

.method public e()Lcom/antivirus/ui/scan/results/l;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/k;->d:Lcom/antivirus/ui/scan/results/l;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/k;->a:Ljava/lang/String;

    return-object v0
.end method
