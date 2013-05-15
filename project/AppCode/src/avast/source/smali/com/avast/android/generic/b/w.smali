.class public abstract Lcom/avast/android/generic/b/w;
.super Lcom/avast/android/generic/b/d;
.source "SetCommandHandler.java"


# instance fields
.field protected a:Lcom/avast/android/generic/b/z;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/avast/android/generic/b/j;

.field protected d:Ljava/util/LinkedList;

.field protected e:Z


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/b/h;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/avast/android/generic/b/d;-><init>(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/b/h;)V

    .line 21
    sget-object v0, Lcom/avast/android/generic/b/z;->a:Lcom/avast/android/generic/b/z;

    iput-object v0, p0, Lcom/avast/android/generic/b/w;->a:Lcom/avast/android/generic/b/z;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/b/w;->b:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    iput-object v0, p0, Lcom/avast/android/generic/b/w;->c:Lcom/avast/android/generic/b/j;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/b/w;->d:Ljava/util/LinkedList;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/b/w;->e:Z

    .line 47
    iput-boolean p3, p0, Lcom/avast/android/generic/b/w;->e:Z

    .line 48
    return-void
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/avast/android/generic/b/w;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/b/y;

    .line 148
    iget-object v2, v0, Lcom/avast/android/generic/b/y;->b:Lcom/avast/android/generic/b/z;

    sget-object v3, Lcom/avast/android/generic/b/z;->o:Lcom/avast/android/generic/b/z;

    if-ne v2, v3, :cond_0

    .line 150
    iget-object v0, v0, Lcom/avast/android/generic/b/y;->a:Ljava/lang/String;

    .line 154
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Lcom/avast/android/generic/ae;ZLcom/avast/android/generic/b/z;Ljava/lang/String;)V
.end method

.method protected abstract c(Ljava/lang/String;)Z
.end method

.method protected n()V
    .locals 3

    .prologue
    .line 56
    :cond_0
    :try_start_0
    new-instance v0, Lcom/avast/android/generic/b/y;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/b/y;-><init>(Lcom/avast/android/generic/b/w;)V

    .line 58
    iget-boolean v1, p0, Lcom/avast/android/generic/b/w;->e:Z

    if-eqz v1, :cond_1

    .line 59
    sget-object v1, Lcom/avast/android/generic/b/j;->d:Lcom/avast/android/generic/b/j;

    iput-object v1, p0, Lcom/avast/android/generic/b/w;->c:Lcom/avast/android/generic/b/j;

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/generic/b/w;->h()Lcom/avast/android/generic/b/h;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/b/w;->c:Lcom/avast/android/generic/b/j;

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;

    move-result-object v1

    .line 63
    const-string v2, "W"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 65
    sget-object v1, Lcom/avast/android/generic/b/z;->o:Lcom/avast/android/generic/b/z;

    iput-object v1, p0, Lcom/avast/android/generic/b/w;->a:Lcom/avast/android/generic/b/z;

    .line 67
    invoke-virtual {p0}, Lcom/avast/android/generic/b/w;->h()Lcom/avast/android/generic/b/h;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/b/h;->a(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/avast/android/generic/b/w;->h()Lcom/avast/android/generic/b/h;

    move-result-object v1

    sget-object v2, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/generic/b/w;->b:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/avast/android/generic/b/w;->b:Ljava/lang/String;

    const-string v2, "-DEL-"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    iget-object v1, p0, Lcom/avast/android/generic/b/w;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/avast/android/generic/b/w;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x50

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/avast/android/generic/b/w;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/avast/android/generic/util/aa;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :catch_0
    move-exception v0

    .line 103
    sget v0, Lcom/avast/android/generic/z;->bJ:I

    sget-object v1, Lcom/avast/a/a/a/a/m;->D:Lcom/avast/a/a/a/a/m;

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/b/w;->a(ILcom/avast/a/a/a/a/m;)V

    .line 107
    :goto_0
    return-void

    .line 77
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/avast/android/generic/b/w;->b:Ljava/lang/String;

    const-string v2, "-DEL-"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    const-string v1, "-DEL-"

    iput-object v1, p0, Lcom/avast/android/generic/b/w;->b:Ljava/lang/String;

    .line 80
    :cond_4
    invoke-virtual {p0}, Lcom/avast/android/generic/b/w;->h()Lcom/avast/android/generic/b/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/b/h;->a(Z)V

    .line 87
    :cond_5
    iget-object v1, p0, Lcom/avast/android/generic/b/w;->a:Lcom/avast/android/generic/b/z;

    sget-object v2, Lcom/avast/android/generic/b/z;->a:Lcom/avast/android/generic/b/z;

    if-ne v1, v2, :cond_7

    .line 88
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 83
    :cond_6
    invoke-virtual {p0, v1}, Lcom/avast/android/generic/b/w;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 90
    :cond_7
    iget-object v1, p0, Lcom/avast/android/generic/b/w;->a:Lcom/avast/android/generic/b/z;

    iput-object v1, v0, Lcom/avast/android/generic/b/y;->b:Lcom/avast/android/generic/b/z;

    .line 91
    iget-object v1, p0, Lcom/avast/android/generic/b/w;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/avast/android/generic/b/y;->a:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/avast/android/generic/b/w;->a:Lcom/avast/android/generic/b/z;

    sget-object v2, Lcom/avast/android/generic/b/z;->i:Lcom/avast/android/generic/b/z;

    if-ne v1, v2, :cond_8

    .line 96
    iget-object v1, p0, Lcom/avast/android/generic/b/w;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    :goto_1
    invoke-virtual {p0}, Lcom/avast/android/generic/b/w;->h()Lcom/avast/android/generic/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/b/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 99
    :cond_8
    :try_start_2
    iget-object v1, p0, Lcom/avast/android/generic/b/w;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected o()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-virtual {p0}, Lcom/avast/android/generic/b/w;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    const-class v2, Lcom/avast/android/generic/ag;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 113
    iget-object v2, p0, Lcom/avast/android/generic/b/w;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    move v2, v1

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/b/w;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/b/y;

    .line 117
    iget-object v4, v1, Lcom/avast/android/generic/b/y;->b:Lcom/avast/android/generic/b/z;

    .line 118
    iget-object v1, v1, Lcom/avast/android/generic/b/y;->a:Ljava/lang/String;

    .line 120
    sget-object v5, Lcom/avast/android/generic/b/x;->a:[I

    invoke-virtual {v4}, Lcom/avast/android/generic/b/z;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 135
    invoke-virtual {p0, v0, v2, v4, v1}, Lcom/avast/android/generic/b/w;->a(Lcom/avast/android/generic/ae;ZLcom/avast/android/generic/b/z;Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    .line 123
    :pswitch_0
    const-string v4, "-DEL-"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->J()V

    .line 130
    :goto_2
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->b()Z

    .line 131
    if-nez v2, :cond_0

    .line 132
    sget v1, Lcom/avast/android/generic/z;->cm:I

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/b/w;->a(I)V

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ae;->k(Ljava/lang/String;)V

    goto :goto_2

    .line 140
    :cond_3
    if-eqz v2, :cond_4

    .line 141
    sget v0, Lcom/avast/android/generic/z;->cU:I

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/b/w;->a(I)V

    .line 142
    :cond_4
    return-void

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected p()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method protected q()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method protected r()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method
