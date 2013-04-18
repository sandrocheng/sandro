.class final Lcom/hoi/widget/z;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# instance fields
.field final synthetic a:Lcom/hoi/widget/NumberPicker;


# direct methods
.method synthetic constructor <init>(Lcom/hoi/widget/NumberPicker;)V
    .locals 1
    .parameter

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hoi/widget/z;-><init>(Lcom/hoi/widget/NumberPicker;B)V

    return-void
.end method

.method private constructor <init>(Lcom/hoi/widget/NumberPicker;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/hoi/widget/z;->a:Lcom/hoi/widget/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 384
    if-nez v0, :cond_0

    .line 385
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 388
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p4, v2, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    invoke-interface {p4, p6, v2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 404
    :cond_1
    :goto_0
    return-object v0

    .line 394
    :cond_2
    iget-object v2, p0, Lcom/hoi/widget/z;->a:Lcom/hoi/widget/NumberPicker;

    invoke-static {v2, v1}, Lcom/hoi/widget/NumberPicker;->a(Lcom/hoi/widget/NumberPicker;Ljava/lang/String;)I

    move-result v1

    .line 401
    iget-object v2, p0, Lcom/hoi/widget/z;->a:Lcom/hoi/widget/NumberPicker;

    invoke-static {v2}, Lcom/hoi/widget/NumberPicker;->h(Lcom/hoi/widget/NumberPicker;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 402
    const-string v0, ""

    goto :goto_0
.end method

.method protected final getAcceptedChars()[C
    .locals 1

    .prologue
    .line 375
    invoke-static {}, Lcom/hoi/widget/NumberPicker;->e()[C

    move-result-object v0

    return-object v0
.end method

.method public final getInputType()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x2

    return v0
.end method
