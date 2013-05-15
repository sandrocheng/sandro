.class public abstract Lcom/avast/android/generic/b/a;
.super Ljava/lang/Object;
.source "Command.java"


# instance fields
.field private a:Lcom/avast/android/generic/b/d;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:Lcom/avast/android/generic/b/c;


# direct methods
.method protected constructor <init>(Lcom/avast/android/generic/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/avast/android/generic/b/a;->d:Z

    .line 38
    iput v0, p0, Lcom/avast/android/generic/b/a;->i:I

    .line 77
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/b/a;->a(Lcom/avast/android/generic/b/d;)V

    .line 78
    invoke-direct {p0, p4}, Lcom/avast/android/generic/b/a;->e(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ag;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 82
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/b/a;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p2}, Lcom/avast/android/generic/b/a;->b(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p3}, Lcom/avast/android/generic/b/a;->d(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private final a(Landroid/content/Context;Lcom/avast/android/generic/b/d;Lcom/avast/android/generic/b/f;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 172
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ag;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 174
    instance-of v1, p0, Lcom/avast/android/generic/b/aa;

    if-eqz v1, :cond_c

    .line 176
    sget-object v0, Lcom/avast/android/generic/b/b;->b:[I

    invoke-virtual {p3}, Lcom/avast/android/generic/b/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 352
    :goto_0
    :pswitch_0
    return-void

    .line 179
    :pswitch_1
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v1

    new-instance v2, Lcom/avast/android/generic/util/bc;

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->l()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v2, v3, v0}, Lcom/avast/android/generic/util/bc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/avast/android/generic/b/p;

    invoke-direct {v0, p2}, Lcom/avast/android/generic/b/p;-><init>(Lcom/avast/android/generic/b/d;)V

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->n()Z

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/util/bc;Lcom/avast/android/generic/f/a/a;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 184
    :pswitch_2
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v1

    new-instance v2, Lcom/avast/android/generic/util/bc;

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v4

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/avast/android/generic/service/AvastService;->l()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/avast/android/generic/service/AvastService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v4

    sget v5, Lcom/avast/android/generic/z;->bo:I

    invoke-virtual {v4, v5}, Lcom/avast/android/generic/service/AvastService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->l()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/avast/android/generic/util/bc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/avast/android/generic/b/p;

    invoke-direct {v0, p2}, Lcom/avast/android/generic/b/p;-><init>(Lcom/avast/android/generic/b/d;)V

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->n()Z

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/util/bc;Lcom/avast/android/generic/f/a/a;Z)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 193
    :pswitch_3
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->m()Ljava/util/List;

    move-result-object v0

    .line 194
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 195
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 196
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 200
    instance-of v1, v0, Lcom/avast/android/generic/util/bc;

    if-eqz v1, :cond_5

    .line 202
    check-cast v0, Lcom/avast/android/generic/util/bc;

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v0, Lcom/avast/android/generic/util/bc;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v0, Lcom/avast/android/generic/util/bc;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", SMS "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    iget-boolean v6, v0, Lcom/avast/android/generic/util/bc;->c:Z

    if-eqz v6, :cond_3

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v6, Lcom/avast/android/generic/z;->k:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    iget-object v6, v0, Lcom/avast/android/generic/util/bc;->a:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/avast/android/generic/util/bc;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v0, Lcom/avast/android/generic/util/bc;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/avast/android/generic/util/bc;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v1, Lcom/avast/android/generic/util/bc;

    invoke-direct {v1, v8, v0}, Lcom/avast/android/generic/util/bc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 210
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v6, Lcom/avast/android/generic/z;->z:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 219
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "?"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 228
    :cond_5
    instance-of v1, v0, Lcom/avast/android/generic/util/az;

    if-eqz v1, :cond_7

    .line 230
    check-cast v0, Lcom/avast/android/generic/util/az;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v0, Lcom/avast/android/generic/util/az;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v0, Lcom/avast/android/generic/util/az;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v6, Lcom/avast/android/generic/z;->cg:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    sget-object v6, Lcom/avast/android/generic/b/b;->a:[I

    iget-object v7, v0, Lcom/avast/android/generic/util/az;->a:Lcom/avast/a/a/a/a/e;

    invoke-virtual {v7}, Lcom/avast/a/a/a/a/e;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 248
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    iget-object v6, v0, Lcom/avast/android/generic/util/az;->b:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/avast/android/generic/util/az;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v0, Lcom/avast/android/generic/util/az;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v6, Lcom/avast/android/generic/z;->bs:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v0, Lcom/avast/android/generic/util/az;->c:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->I:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v1, Lcom/avast/android/generic/util/bc;

    invoke-direct {v1, v8, v0}, Lcom/avast/android/generic/util/bc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 240
    :pswitch_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v6, Lcom/avast/android/generic/z;->k:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    .line 243
    :pswitch_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v6, Lcom/avast/android/generic/z;->z:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    .line 255
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "?"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    .line 263
    :cond_7
    instance-of v1, v0, Lcom/avast/android/generic/util/ba;

    if-eqz v1, :cond_2

    .line 265
    check-cast v0, Lcom/avast/android/generic/util/ba;

    .line 267
    invoke-virtual {v0}, Lcom/avast/android/generic/util/ba;->a()Ljava/lang/String;

    move-result-object v1

    .line 268
    if-eqz v1, :cond_2

    .line 271
    invoke-virtual {v0}, Lcom/avast/android/generic/util/ba;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avast/android/generic/util/ba;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    :cond_8
    invoke-virtual {v0}, Lcom/avast/android/generic/util/ba;->c()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avast/android/generic/util/ba;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    :cond_9
    new-instance v0, Lcom/avast/android/generic/util/bc;

    invoke-direct {v0, v8, v1}, Lcom/avast/android/generic/util/bc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 281
    :cond_a
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/util/bc;

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v5

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/avast/android/generic/service/AvastService;->l()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/avast/android/generic/service/AvastService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v5

    sget v6, Lcom/avast/android/generic/z;->H:I

    invoke-virtual {v5, v6}, Lcom/avast/android/generic/service/AvastService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/avast/android/generic/util/bc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->n()Z

    move-result v3

    invoke-virtual {v0, v1, v8, v3}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/util/bc;Lcom/avast/android/generic/f/a/a;Z)V

    .line 287
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 289
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/avast/android/generic/b/p;

    invoke-direct {v3, p2}, Lcom/avast/android/generic/b/p;-><init>(Lcom/avast/android/generic/b/d;)V

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->n()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/avast/android/generic/service/AvastService;->a(Ljava/lang/String;Ljava/util/List;Lcom/avast/android/generic/f/a/a;Z)V

    .line 293
    :cond_b
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/util/bc;

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v4

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/avast/android/generic/service/AvastService;->l()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/avast/android/generic/service/AvastService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v4

    sget v5, Lcom/avast/android/generic/z;->aa:I

    invoke-virtual {v4, v5}, Lcom/avast/android/generic/service/AvastService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/avast/android/generic/util/bc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->n()Z

    move-result v2

    invoke-virtual {v0, v1, v8, v2}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/util/bc;Lcom/avast/android/generic/f/a/a;Z)V

    goto/16 :goto_0

    .line 302
    :cond_c
    sget-object v1, Lcom/avast/android/generic/b/b;->b:[I

    invoke-virtual {p3}, Lcom/avast/android/generic/b/f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    .line 305
    :pswitch_6
    iget-boolean v0, p0, Lcom/avast/android/generic/b/a;->c:Z

    if-eqz v0, :cond_e

    .line 307
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v1

    new-instance v2, Lcom/avast/android/generic/util/bc;

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_d

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->l()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {v2, v3, v0}, Lcom/avast/android/generic/util/bc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/avast/android/generic/b/p;

    invoke-direct {v0, p2}, Lcom/avast/android/generic/b/p;-><init>(Lcom/avast/android/generic/b/d;)V

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->n()Z

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/util/bc;Lcom/avast/android/generic/f/a/a;Z)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_8

    .line 313
    :cond_e
    new-instance v1, Lcom/avast/android/generic/internet/e;

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/ak;

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->n()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/avast/android/generic/internet/e;-><init>(Lcom/avast/a/a/a/ak;Z)V

    .line 315
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    invoke-virtual {v0, v1, p0, p4}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/internet/e;Lcom/avast/android/generic/b/a;Z)V

    goto/16 :goto_0

    .line 319
    :pswitch_7
    iget-boolean v1, p0, Lcom/avast/android/generic/b/a;->c:Z

    if-eqz v1, :cond_10

    .line 321
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v2

    new-instance v3, Lcom/avast/android/generic/util/bc;

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v5

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->d()Ljava/lang/String;

    move-result-object v6

    if-eqz p4, :cond_f

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->l()Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->v()Z

    move-result v7

    invoke-static {v5, v0, v6, v1, v7}, Lcom/avast/android/generic/internet/j;->a(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/avast/android/generic/util/bc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/avast/android/generic/b/p;

    invoke-direct {v0, p2}, Lcom/avast/android/generic/b/p;-><init>(Lcom/avast/android/generic/b/d;)V

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->n()Z

    move-result v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/util/bc;Lcom/avast/android/generic/f/a/a;Z)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->i()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_9

    .line 333
    :cond_10
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->x()Lcom/avast/android/generic/internet/k;

    move-result-object v2

    .line 335
    new-instance v3, Lcom/avast/android/generic/internet/e;

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz p4, :cond_11

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->l()Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->v()Z

    move-result v5

    invoke-static {v0, v4, v1, v8, v5}, Lcom/avast/android/generic/internet/b;->a(Lcom/avast/android/generic/ae;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/avast/a/a/a/ak;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->n()Z

    move-result v1

    invoke-direct {v3, v0, v1, v2}, Lcom/avast/android/generic/internet/e;-><init>(Lcom/avast/a/a/a/ak;ZLcom/avast/android/generic/internet/k;)V

    .line 343
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    invoke-virtual {v0, v3, p0, p4}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/internet/e;Lcom/avast/android/generic/b/a;Z)V

    goto/16 :goto_0

    .line 335
    :cond_11
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->i()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_a

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 236
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 302
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Lcom/avast/android/generic/b/d;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 355
    const-class v0, Lcom/avast/android/generic/ag;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ae;

    .line 357
    instance-of v0, p0, Lcom/avast/android/generic/b/aa;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/util/bc;

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v4

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/avast/android/generic/service/AvastService;->l()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/avast/android/generic/service/AvastService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v4

    sget v5, Lcom/avast/android/generic/z;->aj:I

    invoke-virtual {v4, v5}, Lcom/avast/android/generic/service/AvastService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/avast/android/generic/util/bc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/avast/android/generic/b/p;

    invoke-direct {v2, p2}, Lcom/avast/android/generic/b/p;-><init>(Lcom/avast/android/generic/b/d;)V

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->n()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/util/bc;Lcom/avast/android/generic/f/a/a;Z)V

    .line 393
    :goto_0
    return v9

    .line 369
    :cond_0
    iget-boolean v0, p0, Lcom/avast/android/generic/b/a;->c:Z

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v6

    new-instance v7, Lcom/avast/android/generic/util/bc;

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->j()Lcom/avast/a/a/a/a/m;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/avast/android/generic/internet/j;->a(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avast/a/a/a/a/m;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lcom/avast/android/generic/util/bc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/avast/android/generic/b/p;

    invoke-direct {v0, p2}, Lcom/avast/android/generic/b/p;-><init>(Lcom/avast/android/generic/b/d;)V

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->n()Z

    move-result v1

    invoke-virtual {v6, v7, v0, v1}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/util/bc;Lcom/avast/android/generic/f/a/a;Z)V

    goto :goto_0

    .line 383
    :cond_1
    new-instance v0, Lcom/avast/android/generic/internet/e;

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->j()Lcom/avast/a/a/a/a/m;

    move-result-object v4

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/avast/android/generic/internet/b;->a(Lcom/avast/android/generic/ae;Ljava/lang/String;Ljava/lang/String;Lcom/avast/a/a/a/a/m;Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->n()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/avast/android/generic/internet/e;-><init>(Lcom/avast/a/a/a/ak;Z)V

    .line 390
    invoke-virtual {p2}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v1

    invoke-virtual {v1, v0, p0, v9}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/internet/e;Lcom/avast/android/generic/b/a;Z)V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/avast/android/generic/b/a;->g:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/avast/android/generic/b/a;->b:Ljava/lang/String;

    .line 117
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avast/android/generic/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lcom/avast/android/generic/b/d;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/avast/android/generic/b/a;->a:Lcom/avast/android/generic/b/d;

    .line 99
    invoke-virtual {p1, p0}, Lcom/avast/android/generic/b/d;->a(Lcom/avast/android/generic/b/a;)V

    .line 100
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/avast/android/generic/b/a;->f:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/avast/android/generic/b/a;->d:Z

    .line 58
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/avast/android/generic/b/a;->e:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/avast/android/generic/b/a;->c:Z

    .line 73
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/avast/android/generic/b/a;->d:Z

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Lcom/avast/android/generic/b/a;->j:Lcom/avast/android/generic/b/c;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/avast/android/generic/b/a;->j:Lcom/avast/android/generic/b/c;

    invoke-interface {v0, p1}, Lcom/avast/android/generic/b/c;->a(Ljava/lang/String;)V

    .line 408
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/avast/android/generic/b/a;->h:Z

    .line 399
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/avast/android/generic/b/a;->c:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/avast/android/generic/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/avast/android/generic/b/d;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/avast/android/generic/b/a;->a:Lcom/avast/android/generic/b/d;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/avast/android/generic/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/avast/android/generic/b/a;->a:Lcom/avast/android/generic/b/d;

    invoke-virtual {v0}, Lcom/avast/android/generic/b/d;->s()V

    .line 125
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/avast/android/generic/b/a;->a:Lcom/avast/android/generic/b/d;

    invoke-virtual {v0}, Lcom/avast/android/generic/b/d;->o()V

    .line 129
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/avast/android/generic/b/a;->a:Lcom/avast/android/generic/b/d;

    invoke-virtual {v0}, Lcom/avast/android/generic/b/d;->t()V

    .line 133
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/avast/android/generic/b/a;->a:Lcom/avast/android/generic/b/d;

    invoke-virtual {v0}, Lcom/avast/android/generic/b/d;->d()Z

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/avast/android/generic/b/a;->a:Lcom/avast/android/generic/b/d;

    invoke-virtual {v0}, Lcom/avast/android/generic/b/d;->e()Lcom/avast/android/generic/b/f;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v2

    .line 144
    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/avast/android/generic/b/a;->a(Landroid/content/Context;Lcom/avast/android/generic/b/d;Lcom/avast/android/generic/b/f;Z)V

    goto :goto_0
.end method

.method public final l()Z
    .locals 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v1

    .line 154
    invoke-virtual {v0}, Lcom/avast/android/generic/b/d;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/avast/android/generic/b/a;->a(Landroid/content/Context;Lcom/avast/android/generic/b/d;)Z

    move-result v0

    goto :goto_0
.end method

.method public final m()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/avast/android/generic/b/a;->a:Lcom/avast/android/generic/b/d;

    invoke-virtual {v0}, Lcom/avast/android/generic/b/d;->k()Lcom/avast/android/generic/b/f;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v2

    .line 165
    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/avast/android/generic/b/a;->a(Landroid/content/Context;Lcom/avast/android/generic/b/d;Lcom/avast/android/generic/b/f;Z)V

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/avast/android/generic/b/a;->h:Z

    return v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/avast/android/generic/b/a;->j:Lcom/avast/android/generic/b/c;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/avast/android/generic/b/a;->j:Lcom/avast/android/generic/b/c;

    invoke-interface {v0}, Lcom/avast/android/generic/b/c;->a()V

    .line 413
    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/avast/android/generic/b/a;->a:Lcom/avast/android/generic/b/d;

    invoke-virtual {v0}, Lcom/avast/android/generic/b/d;->z()V

    .line 425
    return-void
.end method

.method public q()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/avast/android/generic/b/a;->i:I

    return v0
.end method
