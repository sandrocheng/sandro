.class public Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;
.super Lcom/avast/android/generic/ui/widget/Row;
.source "ConnectionTypeButtons.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private m:Z

.field private n:Lcom/avast/android/mobilesecurity/ui/widget/g;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/widget/ToggleButton;

.field private r:Landroid/widget/ToggleButton;

.field private s:Landroid/widget/ToggleButton;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "Wifi"

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a:Ljava/lang/String;

    .line 29
    const-string v0, "Mobile"

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->b:Ljava/lang/String;

    .line 30
    const-string v0, "Roaming"

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->c:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->w:Z

    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->x:Ljava/lang/Boolean;

    .line 53
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->onFinishInflate()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x7f010072

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v2}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const-string v0, "Wifi"

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a:Ljava/lang/String;

    .line 29
    const-string v0, "Mobile"

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->b:Ljava/lang/String;

    .line 30
    const-string v0, "Roaming"

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->c:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->w:Z

    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->x:Ljava/lang/Boolean;

    .line 75
    sget-object v0, Lcom/avast/android/mobilesecurity/v;->g:[I

    const v1, 0x7f0d0084

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const-string v0, "Wifi"

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a:Ljava/lang/String;

    .line 29
    const-string v0, "Mobile"

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->b:Ljava/lang/String;

    .line 30
    const-string v0, "Roaming"

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->c:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->w:Z

    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->x:Ljava/lang/Boolean;

    .line 68
    sget-object v0, Lcom/avast/android/mobilesecurity/v;->g:[I

    const v1, 0x7f0d0084

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "Wifi"

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a:Ljava/lang/String;

    .line 29
    const-string v0, "Mobile"

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->b:Ljava/lang/String;

    .line 30
    const-string v0, "Roaming"

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->c:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->w:Z

    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->x:Ljava/lang/Boolean;

    .line 60
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->onFinishInflate()V

    .line 61
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->g:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->x:Ljava/lang/Boolean;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->m:Z

    .line 81
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->m:Z

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->t:Z

    .line 82
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->m:Z

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->u:Z

    .line 83
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->m:Z

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->v:Z

    .line 84
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)Lcom/avast/android/mobilesecurity/ui/widget/g;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->n:Lcom/avast/android/mobilesecurity/ui/widget/g;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->r:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->s:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->q:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private g()Lcom/avast/android/generic/d/d;
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v1

    instance-of v1, v1, Lcom/avast/android/generic/d/d;

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/d/d;

    .line 213
    :cond_0
    return-object v0
.end method

.method static synthetic h(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 89
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->w:Z

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 92
    :cond_0
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->w:Z

    .line 96
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->l:I

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->l:I

    invoke-static {v0, v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 102
    :goto_1
    const v0, 0x7f020171

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setBackgroundResource(I)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setClickable(Z)V

    .line 104
    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setFocusable(Z)V

    .line 106
    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->o:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->o:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 108
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->o:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :goto_2
    const v0, 0x7f0701c3

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->q:Landroid/widget/ToggleButton;

    .line 116
    const v0, 0x7f0701c4

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->r:Landroid/widget/ToggleButton;

    .line 117
    const v0, 0x7f0701c5

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->s:Landroid/widget/ToggleButton;

    .line 119
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->r:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->s:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->q:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/avast/android/mobilesecurity/ui/widget/d;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/d;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->r:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/avast/android/mobilesecurity/ui/widget/e;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/e;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->s:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/avast/android/mobilesecurity/ui/widget/f;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/f;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030097

    invoke-static {v0, v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_1

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->p:Landroid/graphics/drawable/Drawable;

    .line 237
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_0
    return-void
.end method

.method public a(Lcom/avast/android/mobilesecurity/ui/widget/g;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->n:Lcom/avast/android/mobilesecurity/ui/widget/g;

    .line 219
    return-void
.end method

.method public a(ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->t:Z

    .line 251
    iput-boolean p2, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->u:Z

    .line 252
    iput-boolean p3, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->v:Z

    .line 253
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 189
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->x:Ljava/lang/Boolean;

    monitor-enter v1

    .line 190
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->x:Ljava/lang/Boolean;

    .line 191
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->g()Lcom/avast/android/generic/d/d;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/avast/android/generic/d/d;->b()V

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->q:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Wifi"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->t:Z

    invoke-interface {v3, v4, v5}, Lcom/avast/android/generic/d/e;->b(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 197
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->r:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Mobile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->u:Z

    invoke-interface {v3, v4, v5}, Lcom/avast/android/generic/d/e;->b(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 199
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->s:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Roaming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->v:Z

    invoke-interface {v3, v4, v5}, Lcom/avast/android/generic/d/e;->b(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 201
    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0}, Lcom/avast/android/generic/d/d;->c()V

    .line 204
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->x:Ljava/lang/Boolean;

    .line 205
    monitor-exit v1

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(ZZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->q:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 258
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->r:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 259
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->s:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 260
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->q:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->r:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->s:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->q:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->r:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->s:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 233
    return-void
.end method
