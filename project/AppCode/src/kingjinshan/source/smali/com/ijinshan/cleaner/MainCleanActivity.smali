.class public Lcom/ijinshan/cleaner/MainCleanActivity;
.super Landroid/app/TabActivity;
.source "MainCleanActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field private a:Landroid/view/GestureDetector;

.field private b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

.field private c:Landroid/widget/RadioGroup;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/ijinshan/cleaner/MainCleanActivity;)Lcom/ijinshan/cleaner/adapter/CustomTabHost;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string v2, "CacheCleanerActivity"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 81
    iget-object v1, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    invoke-virtual {v1, v0}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 82
    return-void
.end method

.method static synthetic b(Lcom/ijinshan/cleaner/MainCleanActivity;)Landroid/view/GestureDetector;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->a:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const-string v2, "SDcardCleanerActivity"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 89
    iget-object v1, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    invoke-virtual {v1, v0}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 91
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const-string v2, "HistoryCleanerActivity"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 98
    iget-object v1, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    invoke-virtual {v1, v0}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 99
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/TabActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/MainCleanActivity;->requestWindowFeature(I)Z

    .line 36
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/MainCleanActivity;->setContentView(I)V

    .line 37
    if-nez p1, :cond_0

    .line 38
    const-string v0, "mg_rub_clean_main"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    :cond_0
    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/MainCleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->c:Landroid/widget/RadioGroup;

    .line 40
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/MainCleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    iput-object v0, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    .line 41
    iget-object v0, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "CacheCleanerActivity"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    invoke-virtual {v1, v0}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 42
    iget-object v0, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "SDcardCleanerActivity"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    invoke-virtual {v1, v0}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 43
    iget-object v0, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "HistoryCleanerActivity"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    invoke-virtual {v1, v0}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 44
    iget-object v0, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->c:Landroid/widget/RadioGroup;

    const v1, 0x7f080108

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 45
    iget-object v0, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->c:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/ijinshan/cleaner/z;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/z;-><init>(Lcom/ijinshan/cleaner/MainCleanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    invoke-virtual {v0, p0}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 65
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->a:Landroid/view/GestureDetector;

    .line 66
    new-instance v0, Lcom/ijinshan/cleaner/aa;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/aa;-><init>(Lcom/ijinshan/cleaner/MainCleanActivity;)V

    .line 74
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 105
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    invoke-virtual {v2}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 106
    if-ne v1, v0, :cond_0

    .line 107
    iget-object v2, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->getChildAt(I)Landroid/view/View;

    .line 105
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/ijinshan/cleaner/MainCleanActivity;->b:Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->getChildAt(I)Landroid/view/View;

    goto :goto_1

    .line 112
    :cond_1
    return-void
.end method
