.class final Lcom/hoi/widget/y;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field final synthetic a:Lcom/hoi/widget/NumberPicker;


# direct methods
.method synthetic constructor <init>(Lcom/hoi/widget/NumberPicker;)V
    .locals 1
    .parameter

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hoi/widget/y;-><init>(Lcom/hoi/widget/NumberPicker;B)V

    return-void
.end method

.method private constructor <init>(Lcom/hoi/widget/NumberPicker;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/hoi/widget/y;->a:Lcom/hoi/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 345
    iget-object v0, p0, Lcom/hoi/widget/y;->a:Lcom/hoi/widget/NumberPicker;

    invoke-static {v0}, Lcom/hoi/widget/NumberPicker;->f(Lcom/hoi/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/hoi/widget/y;->a:Lcom/hoi/widget/NumberPicker;

    invoke-static {v0}, Lcom/hoi/widget/NumberPicker;->g(Lcom/hoi/widget/NumberPicker;)Landroid/text/InputFilter;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 349
    :cond_1
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v4, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

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

    .line 353
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lcom/hoi/widget/y;->a:Lcom/hoi/widget/NumberPicker;

    invoke-static {v2}, Lcom/hoi/widget/NumberPicker;->f(Lcom/hoi/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 355
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 356
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 354
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 360
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
