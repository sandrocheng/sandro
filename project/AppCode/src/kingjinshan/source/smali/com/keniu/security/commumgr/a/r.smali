.class public Lcom/keniu/security/commumgr/a/r;
.super Landroid/os/Handler;
.source "RpHandler.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Lcom/keniu/security/commumgr/a/s;

.field private b:Lcom/keniu/security/util/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/keniu/security/commumgr/a/r;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".isPopedReportSettingDialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/commumgr/a/r;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 39
    new-instance v0, Lcom/keniu/security/commumgr/a/l;

    invoke-direct {v0}, Lcom/keniu/security/commumgr/a/l;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/commumgr/a/r;->a:Lcom/keniu/security/commumgr/a/s;

    .line 47
    new-instance v0, Lcom/keniu/security/util/aw;

    invoke-direct {v0}, Lcom/keniu/security/util/aw;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/commumgr/a/r;->b:Lcom/keniu/security/util/aw;

    return-void
.end method

.method private a(Lcom/keniu/security/commumgr/a/d;I)Lcom/keniu/security/util/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/keniu/security/util/a;

    invoke-direct {v0, p1, p0, p2}, Lcom/keniu/security/util/a;-><init>(Lcom/keniu/security/util/b;Landroid/os/Handler;I)V

    .line 21
    invoke-virtual {v0}, Lcom/keniu/security/util/a;->start()V

    .line 22
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 216
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 221
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    return-void
.end method

.method private static b()Z
    .locals 3

    .prologue
    .line 228
    sget-object v0, Lcom/keniu/security/commumgr/a/r;->c:Ljava/lang/String;

    sget-object v1, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static c()V
    .locals 3

    .prologue
    .line 232
    sget-object v0, Lcom/keniu/security/commumgr/a/r;->c:Ljava/lang/String;

    sget-object v1, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/keniu/security/commumgr/a/c;

    invoke-direct {v0}, Lcom/keniu/security/commumgr/a/c;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/keniu/security/commumgr/a/r;->a(Lcom/keniu/security/commumgr/a/d;I)Lcom/keniu/security/util/a;

    .line 27
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 43
    iput p1, v0, Landroid/os/Message;->what:I

    .line 44
    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/a/r;->handleMessage(Landroid/os/Message;)V

    .line 45
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_1

    .line 53
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/r;->b:Lcom/keniu/security/util/aw;

    invoke-virtual {v0}, Lcom/keniu/security/util/aw;->a()V

    .line 54
    sget-boolean v0, Lcom/keniu/security/commumgr/a/e;->w:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/keniu/security/commumgr/a/e;->x:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/keniu/security/commumgr/a/e;->y:Lcom/keniu/security/commumgr/a/k;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->y:Lcom/keniu/security/commumgr/a/k;

    invoke-interface {v0}, Lcom/keniu/security/commumgr/a/k;->a()V

    .line 56
    :cond_0
    iput-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    :goto_0
    return-void

    .line 60
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 61
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/commumgr/a/p;->a(Landroid/os/Bundle;)Lcom/keniu/security/commumgr/a/p;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    iget-object v2, v0, Lcom/keniu/security/commumgr/a/p;->a:Lcom/keniu/security/commumgr/a/q;

    iget v2, v2, Lcom/keniu/security/commumgr/a/q;->d:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v2, v0, Lcom/keniu/security/commumgr/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 64
    iget-object v0, v0, Lcom/keniu/security/commumgr/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 67
    sget-object v1, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    sput-boolean v4, Lcom/keniu/security/commumgr/a/e;->t:Z

    .line 71
    new-instance v0, Lcom/keniu/security/commumgr/a/a;

    invoke-direct {v0, v4}, Lcom/keniu/security/commumgr/a/a;-><init>(Z)V

    invoke-direct {p0, v0, v5}, Lcom/keniu/security/commumgr/a/r;->a(Lcom/keniu/security/commumgr/a/d;I)Lcom/keniu/security/util/a;

    .line 72
    iput-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_3
    sget-boolean v0, Lcom/keniu/security/commumgr/a/e;->t:Z

    if-eqz v0, :cond_4

    .line 77
    new-instance v0, Lcom/keniu/security/commumgr/a/a;

    invoke-direct {v0, v4}, Lcom/keniu/security/commumgr/a/a;-><init>(Z)V

    invoke-direct {p0, v0, v5}, Lcom/keniu/security/commumgr/a/r;->a(Lcom/keniu/security/commumgr/a/d;I)Lcom/keniu/security/util/a;

    .line 78
    iput-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 83
    :cond_4
    new-instance v0, Lcom/keniu/security/commumgr/e;

    sget-object v1, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/keniu/security/commumgr/e;-><init>(Landroid/content/Context;)V

    .line 85
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 204
    new-instance v0, Lcom/keniu/security/commumgr/a/a;

    invoke-direct {v0, v4}, Lcom/keniu/security/commumgr/a/a;-><init>(Z)V

    invoke-direct {p0, v0, v5}, Lcom/keniu/security/commumgr/a/r;->a(Lcom/keniu/security/commumgr/a/d;I)Lcom/keniu/security/util/a;

    .line 205
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    :goto_2
    :sswitch_0
    iput-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 91
    :sswitch_1
    new-instance v0, Lcom/keniu/security/commumgr/a/a;

    invoke-direct {v0, v4}, Lcom/keniu/security/commumgr/a/a;-><init>(Z)V

    invoke-direct {p0, v0, v5}, Lcom/keniu/security/commumgr/a/r;->a(Lcom/keniu/security/commumgr/a/d;I)Lcom/keniu/security/util/a;

    goto :goto_2

    .line 96
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/commumgr/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/r;->a:Lcom/keniu/security/commumgr/a/s;

    invoke-interface {v0}, Lcom/keniu/security/commumgr/a/s;->a()V

    goto :goto_2

    .line 102
    :cond_5
    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/a/r;->a(I)V

    goto :goto_2

    .line 108
    :sswitch_3
    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/a/r;->a(I)V

    goto :goto_2

    .line 113
    :sswitch_4
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 114
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/r;->a:Lcom/keniu/security/commumgr/a/s;

    invoke-interface {v0}, Lcom/keniu/security/commumgr/a/s;->b()V

    goto :goto_2

    .line 119
    :cond_6
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 120
    sput-boolean v3, Lcom/keniu/security/commumgr/a/e;->v:Z

    .line 121
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/r;->a:Lcom/keniu/security/commumgr/a/s;

    invoke-interface {v0}, Lcom/keniu/security/commumgr/a/s;->c()V

    goto :goto_2

    .line 124
    :cond_7
    sput-boolean v4, Lcom/keniu/security/commumgr/a/e;->v:Z

    .line 125
    sget-boolean v0, Lcom/keniu/security/commumgr/a/e;->B:Z

    if-eqz v0, :cond_8

    .line 126
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/r;->a:Lcom/keniu/security/commumgr/a/s;

    invoke-interface {v0}, Lcom/keniu/security/commumgr/a/s;->f()V

    goto :goto_2

    .line 132
    :cond_8
    const/16 v0, 0x109

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/a/r;->a(I)V

    goto :goto_2

    .line 138
    :sswitch_5
    invoke-virtual {v0, v4}, Lcom/keniu/security/commumgr/e;->a(Z)V

    .line 139
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/r;->b:Lcom/keniu/security/util/aw;

    sget-object v1, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aw;->a(Landroid/content/Context;)V

    .line 140
    new-instance v0, Lcom/keniu/security/commumgr/a/b;

    invoke-direct {v0}, Lcom/keniu/security/commumgr/a/b;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/keniu/security/commumgr/a/r;->a(Lcom/keniu/security/commumgr/a/d;I)Lcom/keniu/security/util/a;

    goto :goto_2

    .line 143
    :sswitch_6
    invoke-virtual {v0, v3}, Lcom/keniu/security/commumgr/e;->a(Z)V

    .line 144
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/r;->b:Lcom/keniu/security/util/aw;

    sget-object v1, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aw;->a(Landroid/content/Context;)V

    .line 145
    new-instance v0, Lcom/keniu/security/commumgr/a/b;

    invoke-direct {v0}, Lcom/keniu/security/commumgr/a/b;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/keniu/security/commumgr/a/r;->a(Lcom/keniu/security/commumgr/a/d;I)Lcom/keniu/security/util/a;

    goto :goto_2

    .line 148
    :sswitch_7
    invoke-virtual {v0, v4}, Lcom/keniu/security/commumgr/e;->a(Z)V

    .line 149
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/r;->a:Lcom/keniu/security/commumgr/a/s;

    invoke-interface {v0}, Lcom/keniu/security/commumgr/a/s;->e()V

    goto/16 :goto_2

    .line 152
    :sswitch_8
    invoke-virtual {v0, v3}, Lcom/keniu/security/commumgr/e;->a(Z)V

    .line 153
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/r;->a:Lcom/keniu/security/commumgr/a/s;

    invoke-interface {v0}, Lcom/keniu/security/commumgr/a/s;->e()V

    goto/16 :goto_2

    .line 156
    :sswitch_9
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/r;->b:Lcom/keniu/security/util/aw;

    sget-object v1, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aw;->a(Landroid/content/Context;)V

    .line 157
    new-instance v0, Lcom/keniu/security/commumgr/a/b;

    invoke-direct {v0}, Lcom/keniu/security/commumgr/a/b;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/keniu/security/commumgr/a/r;->a(Lcom/keniu/security/commumgr/a/d;I)Lcom/keniu/security/util/a;

    goto/16 :goto_2

    .line 162
    :sswitch_a
    sget-boolean v0, Lcom/keniu/security/commumgr/a/e;->B:Z

    if-eqz v0, :cond_9

    .line 163
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/r;->a:Lcom/keniu/security/commumgr/a/s;

    invoke-interface {v0}, Lcom/keniu/security/commumgr/a/s;->f()V

    goto/16 :goto_2

    .line 169
    :cond_9
    const/16 v0, 0x109

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/a/r;->a(I)V

    goto/16 :goto_2

    .line 174
    :sswitch_b
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/util/af;->b(Landroid/content/Context;)V

    .line 175
    new-instance v0, Lcom/keniu/security/commumgr/a/a;

    invoke-direct {v0, v3}, Lcom/keniu/security/commumgr/a/a;-><init>(Z)V

    invoke-direct {p0, v0, v5}, Lcom/keniu/security/commumgr/a/r;->a(Lcom/keniu/security/commumgr/a/d;I)Lcom/keniu/security/util/a;

    goto/16 :goto_2

    .line 180
    :sswitch_c
    sget-boolean v0, Lcom/keniu/security/commumgr/a/e;->v:Z

    if-eqz v0, :cond_a

    .line 181
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/a/r;->a(I)V

    goto/16 :goto_2

    .line 183
    :cond_a
    new-instance v0, Lcom/keniu/security/commumgr/a/a;

    invoke-direct {v0, v4}, Lcom/keniu/security/commumgr/a/a;-><init>(Z)V

    invoke-direct {p0, v0, v5}, Lcom/keniu/security/commumgr/a/r;->a(Lcom/keniu/security/commumgr/a/d;I)Lcom/keniu/security/util/a;

    goto/16 :goto_2

    .line 188
    :sswitch_d
    sget-object v1, Lcom/keniu/security/commumgr/a/r;->c:Ljava/lang/String;

    sget-object v2, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    invoke-static {v2}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/keniu/security/commumgr/e;->c()Z

    move-result v0

    if-nez v0, :cond_b

    .line 189
    sget-object v0, Lcom/keniu/security/commumgr/a/r;->c:Ljava/lang/String;

    sget-object v1, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/r;->a:Lcom/keniu/security/commumgr/a/s;

    invoke-interface {v0}, Lcom/keniu/security/commumgr/a/s;->d()V

    goto/16 :goto_2

    .line 194
    :cond_b
    new-instance v0, Lcom/keniu/security/commumgr/a/a;

    invoke-direct {v0, v4}, Lcom/keniu/security/commumgr/a/a;-><init>(Z)V

    invoke-direct {p0, v0, v5}, Lcom/keniu/security/commumgr/a/r;->a(Lcom/keniu/security/commumgr/a/d;I)Lcom/keniu/security/util/a;

    goto/16 :goto_2

    .line 199
    :sswitch_e
    invoke-virtual {v0}, Lcom/keniu/security/commumgr/e;->d()V

    .line 200
    new-instance v0, Lcom/keniu/security/commumgr/a/a;

    invoke-direct {v0, v4}, Lcom/keniu/security/commumgr/a/a;-><init>(Z)V

    invoke-direct {p0, v0, v5}, Lcom/keniu/security/commumgr/a/r;->a(Lcom/keniu/security/commumgr/a/d;I)Lcom/keniu/security/util/a;

    goto/16 :goto_2

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x4 -> :sswitch_c
        0x5 -> :sswitch_d
        0x6 -> :sswitch_1
        0x100 -> :sswitch_3
        0x101 -> :sswitch_4
        0x103 -> :sswitch_b
        0x105 -> :sswitch_e
        0x106 -> :sswitch_a
        0x107 -> :sswitch_5
        0x108 -> :sswitch_6
        0x109 -> :sswitch_9
        0x110 -> :sswitch_8
        0x111 -> :sswitch_7
    .end sparse-switch
.end method
