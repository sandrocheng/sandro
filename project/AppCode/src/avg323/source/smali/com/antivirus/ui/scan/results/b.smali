.class public Lcom/antivirus/ui/scan/results/b;
.super Lcom/antivirus/ui/scan/results/k;


# instance fields
.field a:Ljava/util/ArrayList;

.field private b:Lcom/antivirus/ui/scan/results/c;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const v2, 0x7f0900ed

    invoke-direct {p0, p2}, Lcom/antivirus/ui/scan/results/k;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/b;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/antivirus/ui/scan/results/l;

    invoke-static {p1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/antivirus/ui/scan/results/l;-><init>(Lcom/antivirus/ui/scan/results/k;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/b;->a(Lcom/antivirus/ui/scan/results/l;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/ui/scan/results/c;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    const v2, 0x7f0900ed

    invoke-direct {p0, p2}, Lcom/antivirus/ui/scan/results/k;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/b;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/antivirus/ui/scan/results/l;

    invoke-static {p1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/antivirus/ui/scan/results/l;-><init>(Lcom/antivirus/ui/scan/results/k;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/b;->a(Lcom/antivirus/ui/scan/results/l;)V

    iput-object p3, p0, Lcom/antivirus/ui/scan/results/b;->b:Lcom/antivirus/ui/scan/results/c;

    iput-object p4, p0, Lcom/antivirus/ui/scan/results/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/antivirus/ui/scan/results/b;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/antivirus/ui/scan/results/c;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/b;->b:Lcom/antivirus/ui/scan/results/c;

    return-object v0
.end method
