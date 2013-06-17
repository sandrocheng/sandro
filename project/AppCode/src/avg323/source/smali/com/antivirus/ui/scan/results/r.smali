.class public Lcom/antivirus/ui/scan/results/r;
.super Lcom/antivirus/ui/scan/results/k;


# instance fields
.field private a:Lcom/antivirus/ui/scan/results/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const v2, 0x7f090040

    invoke-direct {p0, p2}, Lcom/antivirus/ui/scan/results/k;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/antivirus/ui/scan/results/l;

    invoke-static {p1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/antivirus/ui/scan/results/l;-><init>(Lcom/antivirus/ui/scan/results/k;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/r;->a(Lcom/antivirus/ui/scan/results/l;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/ui/scan/results/s;)V
    .locals 3

    const v2, 0x7f090040

    invoke-direct {p0, p2}, Lcom/antivirus/ui/scan/results/k;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/antivirus/ui/scan/results/l;

    invoke-static {p1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/antivirus/ui/scan/results/l;-><init>(Lcom/antivirus/ui/scan/results/k;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/r;->a(Lcom/antivirus/ui/scan/results/l;)V

    iput-object p3, p0, Lcom/antivirus/ui/scan/results/r;->a:Lcom/antivirus/ui/scan/results/s;

    return-void
.end method


# virtual methods
.method public a()Lcom/antivirus/ui/scan/results/s;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/r;->a:Lcom/antivirus/ui/scan/results/s;

    return-object v0
.end method
