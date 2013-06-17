.class public Lcom/antivirus/ui/scan/results/a;
.super Lcom/antivirus/ui/scan/results/k;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const v2, 0x7f0900ec

    invoke-direct {p0, p2}, Lcom/antivirus/ui/scan/results/k;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/antivirus/ui/scan/results/a;->a:Ljava/lang/String;

    new-instance v0, Lcom/antivirus/ui/scan/results/l;

    invoke-static {p1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/antivirus/ui/scan/results/l;-><init>(Lcom/antivirus/ui/scan/results/k;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/a;->a(Lcom/antivirus/ui/scan/results/l;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/results/a;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/a;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
