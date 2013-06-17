.class public Lcom/antivirus/ui/scan/results/l;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/scan/results/k;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/antivirus/ui/scan/results/k;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/results/l;->a:Lcom/antivirus/ui/scan/results/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/antivirus/ui/scan/results/l;->b:Ljava/lang/String;

    iput p3, p0, Lcom/antivirus/ui/scan/results/l;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/antivirus/ui/scan/results/l;

    :try_start_0
    iget v1, p0, Lcom/antivirus/ui/scan/results/l;->c:I

    iget v0, v0, Lcom/antivirus/ui/scan/results/l;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/l;->b:Ljava/lang/String;

    return-object v0
.end method
