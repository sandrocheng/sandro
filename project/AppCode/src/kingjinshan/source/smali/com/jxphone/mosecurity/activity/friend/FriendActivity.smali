.class public final Lcom/jxphone/mosecurity/activity/friend/FriendActivity;
.super Lcom/jxphone/mosecurity/activity/BaseContactActivity;
.source "FriendActivity.java"


# static fields
.field public static final l:Ljava/lang/String; = "com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE"

.field public static final m:Ljava/lang/String; = "com.conew.mosecurity.ACTION_CHECK_PWD_END"

.field public static final n:Ljava/lang/String; = "friend_dummy_space"

.field private static final p:I = -0x1


# instance fields
.field o:Landroid/view/View$OnClickListener;

.field private q:Lcom/keniu/security/a;

.field private r:Lcom/jxphone/mosecurity/activity/a/a;

.field private s:[Lcom/jxphone/mosecurity/c/b;

.field private t:Landroid/widget/ListView;

.field private final u:Landroid/os/Handler;

.field private final v:Lcom/keniu/security/e/b;

.field private w:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;-><init>()V

    .line 68
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/c;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/c;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->u:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/keniu/security/e/b;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->u:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/keniu/security/e/b;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->v:Lcom/keniu/security/e/b;

    .line 181
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/d;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/d;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->o:Landroid/view/View$OnClickListener;

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->w:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method static synthetic A()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic B()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic C()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic D()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic E()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic F()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic G()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic H()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method private I()V
    .locals 2

    .prologue
    .line 141
    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->t:Landroid/widget/ListView;

    .line 142
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->t:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/e;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/e;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->t:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/f;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/f;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 147
    return-void
.end method

.method private J()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 156
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->i:Z

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/d;->b(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->s:[Lcom/jxphone/mosecurity/c/b;

    .line 158
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->s:[Lcom/jxphone/mosecurity/c/b;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 159
    const v0, 0x7f0b0699

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->a(Ljava/lang/String;)V

    .line 161
    sput v5, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->a:I

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->I()V

    .line 167
    :cond_2
    new-instance v0, Lcom/jxphone/mosecurity/activity/a/a;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->s:[Lcom/jxphone/mosecurity/c/b;

    iget-boolean v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->i:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/jxphone/mosecurity/activity/a/a;-><init>(Landroid/content/Context;[Lcom/jxphone/mosecurity/c/b;Z)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->r:Lcom/jxphone/mosecurity/activity/a/a;

    .line 168
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->t:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->r:Lcom/jxphone/mosecurity/activity/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->t:Landroid/widget/ListView;

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setNextFocusDownId(I)V

    .line 170
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->r:Lcom/jxphone/mosecurity/activity/a/a;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/a/a;->getCount()I

    move-result v0

    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/a;->aH()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v6

    const-string v3, "0401000301"

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v6

    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "dt"

    aput-object v3, v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keniu/security/util/i;->c(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v5

    const/4 v2, 0x3

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "actionname"

    aput-object v4, v3, v6

    const-string v4, "fd"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "res"

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->a([[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static K()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method private L()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 238
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 239
    const-string v1, "isDummy"

    iget-boolean v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    return-object v0
.end method

.method private M()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->t:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/e;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/e;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->t:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/f;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/f;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 270
    return-void
.end method

.method private N()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 312
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 313
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 314
    const v1, 0x7f0b05fa

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 315
    const v1, 0x7f0b0683

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 316
    const v1, 0x7f0b0682

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/g;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/g;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 324
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method private O()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 329
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 330
    const v1, 0x7f0b0686

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 331
    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->i:Z

    if-eqz v1, :cond_0

    .line 332
    const v1, 0x7f070015

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/h;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/h;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 494
    :goto_0
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0

    .line 393
    :cond_0
    const v1, 0x7f070014

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/j;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/j;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    goto :goto_0
.end method

.method private a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 498
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 501
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "s"

    aput-object v2, v1, v4

    const-string v2, "0401000301"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "uuid"

    aput-object v2, v1, v4

    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "dt"

    aput-object v2, v1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keniu/security/util/i;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "res"

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 508
    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->a([[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(ILcom/jxphone/mosecurity/c/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 273
    sput-object p2, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    .line 274
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->showDialog(I)V

    .line 275
    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->J()V

    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;Lcom/jxphone/mosecurity/c/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    sput-object p1, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->showDialog(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {p0, v2}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/d;->b(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 150
    if-nez v0, :cond_0

    move v0, v2

    .line 152
    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->t:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;Lcom/jxphone/mosecurity/c/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->a(ILcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/activity/r;)V

    return-void
.end method

.method static synthetic c(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;Lcom/jxphone/mosecurity/c/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->a(ILcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/activity/r;)V

    return-void
.end method

.method static synthetic c(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->i:Z

    return v0
.end method

.method static synthetic g(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->i:Z

    return v0
.end method

.method static synthetic h(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->i:Z

    return v0
.end method

.method static synthetic m()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic n()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic o()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic p()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic q()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic r()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic s()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic t()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic u()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic v()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic w()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic x()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic y()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic z()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 190
    const v0, 0x7f0c0003

    return v0
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->f()V

    .line 118
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->i:Z

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->v:Lcom/keniu/security/e/b;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/d;->a(Lcom/keniu/security/e/c;)V

    .line 119
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->I()V

    .line 120
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->J()V

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.conew.mosecurity.ACTION_CHECK_PWD_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    const-string v1, "isDummy"

    iget-boolean v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 137
    const v0, 0x7f030058

    return v0
.end method

.method protected final j()I
    .locals 1

    .prologue
    .line 513
    const v0, 0x7f030059

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    const v1, 0x7f0b0687

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 92
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v1, 0x7f0b05f0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 96
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->q:Lcom/keniu/security/a;

    .line 97
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->q:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->ai()Z

    move-result v0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->i:Z

    .line 98
    sget-object v0, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->h:Lcom/jxphone/mosecurity/c/c;

    .line 100
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->f()V

    .line 101
    return-void
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 279
    sparse-switch p1, :sswitch_data_0

    .line 288
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    .line 282
    :sswitch_0
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b05fa

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0683

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0682

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/g;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/g;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_0

    .line 285
    :sswitch_1
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0686

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->i:Z

    if-eqz v1, :cond_0

    const v1, 0x7f070015

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/h;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/h;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    :goto_1
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f070014

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/j;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/j;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    goto :goto_1

    .line 279
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x7f070014 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 199
    return v0
.end method

.method protected final onDestroy()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->onDestroy()V

    .line 130
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->i:Z

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->v:Lcom/keniu/security/e/b;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/d;->b(Lcom/keniu/security/e/c;)V

    .line 132
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->s:[Lcom/jxphone/mosecurity/c/b;

    invoke-static {v0}, Lcom/jxphone/mosecurity/c/b;->a([Lcom/jxphone/mosecurity/c/b;)V

    .line 133
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 296
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->t:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 298
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->r:Lcom/jxphone/mosecurity/activity/a/a;

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/activity/a/a;->a(I)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/util/af;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    move v0, v2

    .line 308
    :goto_0
    return v0

    .line 304
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->finish()V

    move v0, v2

    .line 306
    goto :goto_0

    .line 308
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 234
    :goto_0
    return v0

    .line 215
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->showDialog(I)V

    .line 234
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 219
    :pswitch_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->s:[Lcom/jxphone/mosecurity/c/b;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 220
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->showDialog(I)V

    goto :goto_1

    .line 222
    :cond_0
    const v0, 0x7f0b0699

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 213
    :pswitch_data_0
    .packed-switch 0x7f080416
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->s:[Lcom/jxphone/mosecurity/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->s:[Lcom/jxphone/mosecurity/c/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->s:[Lcom/jxphone/mosecurity/c/b;

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v3

    .line 206
    :goto_0
    const v1, 0x7f080416

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 208
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v2

    .line 204
    goto :goto_0

    :cond_2
    move v0, v2

    .line 206
    goto :goto_1
.end method

.method protected final onStart()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->onStart()V

    .line 112
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->q:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->aF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method protected final onStop()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 521
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 524
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->onStop()V

    .line 525
    return-void
.end method
