.class public Lcom/ijinshan/cleaner/HistoryCleanerActivity;
.super Landroid/app/Activity;
.source "HistoryCleanerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final a:Ljava/lang/String; = "com.google.android.gm"

.field public static final b:Ljava/lang/String; = "com.google.android.apps.maps"

.field public static final c:Ljava/lang/String; = "com.android.vending"

.field public static final d:Ljava/lang/String; = "\u6d4f\u89c8\u5668\u8bb0\u5f55"

.field public static final e:Ljava/lang/String; = "\u8c37\u6b4c\u5730\u56fe\u641c\u7d22\u8bb0\u5f55"

.field public static final f:Ljava/lang/String; = "Gmail\u641c\u7d22\u8bb0\u5f55"

.field public static final g:Ljava/lang/String; = "\u8c37\u6b4cMarket\u8bb0\u5f55"

.field public static final h:Ljava/lang/String; = "\u526a\u8d34\u677f\u8bb0\u5f55"

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4

.field public static final m:I = 0x5

.field public static final n:I = 0x6

.field public static final o:I = 0x7

.field public static final p:I = 0x8


# instance fields
.field q:Landroid/os/Handler;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/Button;

.field private x:Lcom/keniu/security/a;

.field private y:Ljava/util/List;

.field private z:Lcom/hoi/widget/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 231
    new-instance v0, Lcom/ijinshan/cleaner/y;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/y;-><init>(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)V

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->q:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Lcom/keniu/security/a;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->x:Lcom/keniu/security/a;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    .line 71
    const v0, 0x7f0800f1

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->w:Landroid/widget/Button;

    .line 72
    const v0, 0x7f0800f4

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->r:Landroid/widget/LinearLayout;

    .line 73
    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->s:Landroid/widget/LinearLayout;

    .line 74
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->t:Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->u:Landroid/widget/LinearLayout;

    .line 76
    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->v:Landroid/widget/LinearLayout;

    .line 77
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method private a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 226
    iput p1, v0, Landroid/os/Message;->what:I

    .line 227
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 228
    iget-object v1, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->q:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 229
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/cleaner/HistoryCleanerActivity;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->q:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic b(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Gmail\u641c\u7d22\u8bb0\u5f55"

    goto :goto_0

    :pswitch_1
    const-string v0, "\u8c37\u6b4c\u5730\u56fe\u641c\u7d22\u8bb0\u5f55"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u8c37\u6b4cMarket\u8bb0\u5f55"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u6d4f\u89c8\u5668\u8bb0\u5f55"

    goto :goto_0

    :pswitch_4
    const-string v0, "\u526a\u8d34\u677f\u8bb0\u5f55"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 81
    invoke-direct {p0, v1}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    invoke-direct {p0, v2}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1
    invoke-direct {p0, v3}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_2
    invoke-direct {p0, v4}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_3
    invoke-direct {p0, v5}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->c(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->d()V

    return-void
.end method

.method static synthetic c(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const v5, 0x7f0b00d5

    const/4 v4, 0x0

    .line 156
    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 158
    const v0, 0x7f0b00bf

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 159
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const v0, 0x7f0b0289

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 161
    invoke-virtual {v2, v5, v3}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 196
    :goto_0
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 197
    return-void

    .line 163
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030039

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 165
    const v0, 0x7f08011d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 167
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 168
    const v1, 0x7f08011b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 170
    const v4, 0x7f0b0286

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 171
    invoke-virtual {v2, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 173
    const v1, 0x7f0b00d6

    new-instance v3, Lcom/ijinshan/cleaner/v;

    invoke-direct {v3, p0, v0}, Lcom/ijinshan/cleaner/v;-><init>(Lcom/ijinshan/cleaner/HistoryCleanerActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v3}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 182
    new-instance v1, Lcom/ijinshan/cleaner/w;

    invoke-direct {v1, p0, v0}, Lcom/ijinshan/cleaner/w;-><init>(Lcom/ijinshan/cleaner/HistoryCleanerActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v5, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    goto :goto_0
.end method

.method private c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 95
    packed-switch p1, :pswitch_data_0

    .line 113
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 98
    :pswitch_0
    const v0, 0x7f0800f7

    .line 115
    :goto_1
    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 116
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_0

    .line 101
    :pswitch_1
    const v0, 0x7f0800f9

    .line 102
    goto :goto_1

    .line 104
    :pswitch_2
    const v0, 0x7f0800fb

    .line 105
    goto :goto_1

    .line 107
    :pswitch_3
    const v0, 0x7f0800fd

    .line 108
    goto :goto_1

    .line 110
    :pswitch_4
    const v0, 0x7f0800ff

    .line 111
    goto :goto_1

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static d(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 120
    packed-switch p0, :pswitch_data_0

    .line 132
    const-string v0, ""

    :goto_0
    return-object v0

    .line 122
    :pswitch_0
    const-string v0, "Gmail\u641c\u7d22\u8bb0\u5f55"

    goto :goto_0

    .line 124
    :pswitch_1
    const-string v0, "\u8c37\u6b4c\u5730\u56fe\u641c\u7d22\u8bb0\u5f55"

    goto :goto_0

    .line 126
    :pswitch_2
    const-string v0, "\u8c37\u6b4cMarket\u8bb0\u5f55"

    goto :goto_0

    .line 128
    :pswitch_3
    const-string v0, "\u6d4f\u89c8\u5668\u8bb0\u5f55"

    goto :goto_0

    .line 130
    :pswitch_4
    const-string v0, "\u526a\u8d34\u677f\u8bb0\u5f55"

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private d()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/ijinshan/cleaner/x;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/x;-><init>(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)V

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/x;->start()V

    .line 222
    return-void
.end method

.method static synthetic d(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/hoi/widget/o;

    invoke-direct {v0, p0, v2}, Lcom/hoi/widget/o;-><init>(Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->z:Lcom/hoi/widget/o;

    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->z:Lcom/hoi/widget/o;

    const v1, 0x7f0b026f

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->z:Lcom/hoi/widget/o;

    invoke-virtual {v0}, Lcom/hoi/widget/o;->b()V

    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->z:Lcom/hoi/widget/o;

    invoke-virtual {v0, v2}, Lcom/hoi/widget/o;->a(I)V

    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->z:Lcom/hoi/widget/o;

    iget-object v1, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->b(I)V

    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->z:Lcom/hoi/widget/o;

    invoke-virtual {v0}, Lcom/hoi/widget/o;->show()V

    return-void
.end method

.method static synthetic e(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Lcom/hoi/widget/o;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->z:Lcom/hoi/widget/o;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    new-instance v0, Lcom/hoi/widget/o;

    invoke-direct {v0, p0, v2}, Lcom/hoi/widget/o;-><init>(Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->z:Lcom/hoi/widget/o;

    .line 285
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->z:Lcom/hoi/widget/o;

    const v1, 0x7f0b026f

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->z:Lcom/hoi/widget/o;

    invoke-virtual {v0}, Lcom/hoi/widget/o;->b()V

    .line 287
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->z:Lcom/hoi/widget/o;

    invoke-virtual {v0, v2}, Lcom/hoi/widget/o;->a(I)V

    .line 288
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->z:Lcom/hoi/widget/o;

    iget-object v1, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->b(I)V

    .line 289
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->z:Lcom/hoi/widget/o;

    invoke-virtual {v0}, Lcom/hoi/widget/o;->show()V

    .line 290
    return-void
.end method

.method static synthetic f(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Lcom/hoi/widget/o;
    .locals 1
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->z:Lcom/hoi/widget/o;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 263
    new-instance v0, Lcom/ijinshan/cleaner/n;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/n;-><init>(Landroid/content/Context;)V

    .line 264
    packed-switch p1, :pswitch_data_0

    .line 281
    :goto_0
    return-void

    .line 266
    :pswitch_0
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/n;->e()V

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/n;->f()V

    goto :goto_0

    .line 272
    :pswitch_2
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/n;->g()V

    goto :goto_0

    .line 275
    :pswitch_3
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/n;->c()V

    goto :goto_0

    .line 278
    :pswitch_4
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/n;->a()V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 138
    const-string v0, "mg_rub_history_clean"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    invoke-direct {p0, v1}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v2}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0, v3}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0, v5}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->c(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->x:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->d()Z

    move-result v0

    if-nez v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    const-string v0, "mg_rub_history_clean_success"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->d()V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_5
    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v0, 0x7f0b00bf

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f0b0289

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b00d5

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    :goto_1
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto :goto_0

    :cond_6
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f08011d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v1, 0x7f08011b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0b0286

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d6

    new-instance v3, Lcom/ijinshan/cleaner/v;

    invoke-direct {v3, p0, v0}, Lcom/ijinshan/cleaner/v;-><init>(Lcom/ijinshan/cleaner/HistoryCleanerActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v3}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d5

    new-instance v3, Lcom/ijinshan/cleaner/w;

    invoke-direct {v3, p0, v0}, Lcom/ijinshan/cleaner/w;-><init>(Lcom/ijinshan/cleaner/HistoryCleanerActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->x:Lcom/keniu/security/a;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->y:Ljava/util/List;

    const v0, 0x7f0800f1

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->w:Landroid/widget/Button;

    const v0, 0x7f0800f4

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->r:Landroid/widget/LinearLayout;

    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->s:Landroid/widget/LinearLayout;

    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->t:Landroid/widget/LinearLayout;

    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->u:Landroid/widget/LinearLayout;

    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->v:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method
