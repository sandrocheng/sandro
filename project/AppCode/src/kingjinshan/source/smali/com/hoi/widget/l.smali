.class final Lcom/hoi/widget/l;
.super Landroid/text/method/NumberKeyListener;
.source "HorizontalNumberPicker.java"


# instance fields
.field final synthetic a:Lcom/hoi/widget/HorizontalNumberPicker;


# direct methods
.method synthetic constructor <init>(Lcom/hoi/widget/HorizontalNumberPicker;)V
    .locals 1
    .parameter

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hoi/widget/l;-><init>(Lcom/hoi/widget/HorizontalNumberPicker;B)V

    return-void
.end method

.method private constructor <init>(Lcom/hoi/widget/HorizontalNumberPicker;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/hoi/widget/l;->a:Lcom/hoi/widget/HorizontalNumberPicker;

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
    .line 356
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 358
    if-nez v0, :cond_0

    .line 359
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 362
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

    .line 365
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 378
    :cond_1
    :goto_0
    return-object v0

    .line 368
    :cond_2
    iget-object v2, p0, Lcom/hoi/widget/l;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-static {v2, v1}, Lcom/hoi/widget/HorizontalNumberPicker;->a(Lcom/hoi/widget/HorizontalNumberPicker;Ljava/lang/String;)I

    move-result v1

    .line 375
    iget-object v2, p0, Lcom/hoi/widget/l;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-static {v2}, Lcom/hoi/widget/HorizontalNumberPicker;->h(Lcom/hoi/widget/HorizontalNumberPicker;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 376
    const-string v0, ""

    goto :goto_0
.end method

.method protected final getAcceptedChars()[C
    .locals 1

    .prologue
    .line 349
    invoke-static {}, Lcom/hoi/widget/HorizontalNumberPicker;->e()[C

    move-result-object v0

    return-object v0
.end method

.method public final getInputType()I
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x2

    return v0
.end method
