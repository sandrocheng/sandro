.class public Lcom/hoi/widget/NumberPickerButton;
.super Landroid/widget/ImageButton;
.source "NumberPickerButton.java"


# instance fields
.field private a:Lcom/hoi/widget/NumberPicker;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 60
    const v0, 0x7f080156

    invoke-virtual {p0}, Lcom/hoi/widget/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/hoi/widget/NumberPickerButton;->a:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/NumberPicker;->b()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const v0, 0x7f080157

    invoke-virtual {p0}, Lcom/hoi/widget/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/hoi/widget/NumberPickerButton;->a:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/NumberPicker;->c()V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/hoi/widget/NumberPickerButton;->a()V

    .line 57
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/hoi/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/hoi/widget/NumberPickerButton;->a:Lcom/hoi/widget/NumberPicker;

    .line 29
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/hoi/widget/NumberPickerButton;->a()V

    .line 49
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/hoi/widget/NumberPickerButton;->a(Landroid/view/MotionEvent;)V

    .line 34
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/hoi/widget/NumberPickerButton;->a(Landroid/view/MotionEvent;)V

    .line 40
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
