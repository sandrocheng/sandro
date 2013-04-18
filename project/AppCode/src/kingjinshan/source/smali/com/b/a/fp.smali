.class public final Lcom/b/a/fp;
.super Ljava/lang/Object;
.source "SingleFieldBuilder.java"

# interfaces
.implements Lcom/b/a/dp;


# instance fields
.field private a:Lcom/b/a/dp;

.field private b:Lcom/b/a/dn;

.field private c:Lcom/b/a/dk;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/b/a/fp;->c:Lcom/b/a/dk;

    .line 91
    iput-object p2, p0, Lcom/b/a/fp;->a:Lcom/b/a/dp;

    .line 92
    iput-boolean p3, p0, Lcom/b/a/fp;->d:Z

    .line 93
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/fp;->c:Lcom/b/a/dk;

    .line 229
    :cond_0
    iget-boolean v0, p0, Lcom/b/a/fp;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/fp;->a:Lcom/b/a/dp;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/b/a/fp;->a:Lcom/b/a/dp;

    invoke-interface {v0}, Lcom/b/a/dp;->a()V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/fp;->d:Z

    .line 235
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/dk;)Lcom/b/a/fp;
    .locals 1
    .parameter

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/b/a/fp;->c:Lcom/b/a/dk;

    .line 176
    iget-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    invoke-virtual {v0}, Lcom/b/a/dn;->O()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    .line 180
    :cond_1
    invoke-direct {p0}, Lcom/b/a/fp;->h()V

    .line 181
    return-object p0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/b/a/fp;->h()V

    .line 240
    return-void
.end method

.method public final b(Lcom/b/a/dk;)Lcom/b/a/fp;
    .locals 2
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/fp;->c:Lcom/b/a/dk;

    iget-object v1, p0, Lcom/b/a/fp;->c:Lcom/b/a/dk;

    invoke-virtual {v1}, Lcom/b/a/dk;->I()Lcom/b/a/ev;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 193
    iput-object p1, p0, Lcom/b/a/fp;->c:Lcom/b/a/dk;

    .line 197
    :goto_0
    invoke-direct {p0}, Lcom/b/a/fp;->h()V

    .line 198
    return-object p0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/fp;->a:Lcom/b/a/dp;

    .line 98
    return-void
.end method

.method public final c()Lcom/b/a/dk;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/b/a/fp;->c:Lcom/b/a/dk;

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    invoke-virtual {v0}, Lcom/b/a/dn;->J()Lcom/b/a/ev;

    move-result-object v0

    check-cast v0, Lcom/b/a/dk;

    iput-object v0, p0, Lcom/b/a/fp;->c:Lcom/b/a/dk;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/b/a/fp;->c:Lcom/b/a/dk;

    return-object v0
.end method

.method public final d()Lcom/b/a/dk;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/fp;->d:Z

    .line 126
    invoke-virtual {p0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/b/a/dn;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/b/a/fp;->c:Lcom/b/a/dk;

    invoke-virtual {v0, p0}, Lcom/b/a/dk;->a(Lcom/b/a/dp;)Lcom/b/a/ew;

    move-result-object v0

    check-cast v0, Lcom/b/a/dn;

    iput-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    .line 143
    iget-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    iget-object v1, p0, Lcom/b/a/fp;->c:Lcom/b/a/dk;

    invoke-virtual {v0, v1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    .line 144
    iget-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    invoke-virtual {v0}, Lcom/b/a/dn;->ac_()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    return-object v0
.end method

.method public final f()Lcom/b/a/fa;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    .line 160
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/fp;->c:Lcom/b/a/dk;

    goto :goto_0
.end method

.method public final g()Lcom/b/a/fp;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/b/a/fp;->c:Lcom/b/a/dk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/fp;->c:Lcom/b/a/dk;

    invoke-virtual {v0}, Lcom/b/a/dk;->I()Lcom/b/a/ev;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/b/a/dk;

    iput-object v0, p0, Lcom/b/a/fp;->c:Lcom/b/a/dk;

    .line 211
    iget-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    invoke-virtual {v0}, Lcom/b/a/dn;->O()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/b/a/fp;->h()V

    .line 216
    return-object p0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/b/a/fp;->b:Lcom/b/a/dn;

    invoke-virtual {v0}, Lcom/b/a/dn;->I()Lcom/b/a/ev;

    move-result-object v0

    goto :goto_0
.end method
