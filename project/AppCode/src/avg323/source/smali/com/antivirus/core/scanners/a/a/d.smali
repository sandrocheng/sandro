.class public Lcom/antivirus/core/scanners/a/a/d;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Lcom/antivirus/core/scanners/a/a/f;


# direct methods
.method public constructor <init>(ILcom/antivirus/core/scanners/a/a/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/antivirus/core/scanners/a/a/d;->a:I

    iput-object p2, p0, Lcom/antivirus/core/scanners/a/a/d;->b:Lcom/antivirus/core/scanners/a/a/f;

    return-void
.end method

.method public constructor <init>(Lcom/antivirus/core/scanners/a/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/antivirus/core/scanners/a/a/d;->a:I

    iput v0, p0, Lcom/antivirus/core/scanners/a/a/d;->a:I

    iget-object v0, p1, Lcom/antivirus/core/scanners/a/a/d;->b:Lcom/antivirus/core/scanners/a/a/f;

    iput-object v0, p0, Lcom/antivirus/core/scanners/a/a/d;->b:Lcom/antivirus/core/scanners/a/a/f;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/antivirus/core/scanners/a/a/e;->a:[I

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/d;->b:Lcom/antivirus/core/scanners/a/a/f;

    invoke-virtual {v3}, Lcom/antivirus/core/scanners/a/a/f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget v2, p0, Lcom/antivirus/core/scanners/a/a/d;->a:I

    if-le v2, p1, :cond_0

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/antivirus/core/scanners/a/a/d;->a:I

    if-ge v2, p1, :cond_0

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/antivirus/core/scanners/a/a/d;->a:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
