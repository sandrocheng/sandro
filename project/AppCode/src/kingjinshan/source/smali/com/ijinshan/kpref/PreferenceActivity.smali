.class public abstract Lcom/ijinshan/kpref/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/x;


# static fields
.field private static final a:Ljava/lang/String; = "android:preferences"

.field private static final d:I = 0x64

.field private static final e:I


# instance fields
.field private b:Lcom/ijinshan/kpref/t;

.field private c:Landroid/os/Bundle;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 93
    new-instance v0, Lcom/ijinshan/kpref/o;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/o;-><init>(Lcom/ijinshan/kpref/PreferenceActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->f:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/ijinshan/kpref/PreferenceActivity;->f()V

    .line 252
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    iget-object v1, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    invoke-virtual {v1}, Lcom/ijinshan/kpref/t;->c()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ijinshan/kpref/t;->a(Landroid/content/Intent;Lcom/ijinshan/kpref/PreferenceScreen;)Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/PreferenceActivity;->a(Lcom/ijinshan/kpref/PreferenceScreen;)V

    .line 253
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kpref/PreferenceActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->c()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->c:Landroid/os/Bundle;

    invoke-super {p0, v0}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->c:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->c()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Landroid/widget/ListView;)V

    .line 186
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->c:Landroid/os/Bundle;

    invoke-super {p0, v0}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->c:Landroid/os/Bundle;

    .line 191
    :cond_0
    return-void
.end method

.method private e()Lcom/ijinshan/kpref/t;
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/ijinshan/kpref/t;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/t;-><init>(Landroid/app/Activity;)V

    .line 200
    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/t;->a(Lcom/ijinshan/kpref/x;)V

    .line 201
    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;
    .locals 1
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0, p1}, Lcom/ijinshan/kpref/t;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Lcom/ijinshan/kpref/t;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    return-object v0
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/ijinshan/kpref/PreferenceActivity;->f()V

    .line 264
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    iget-object v1, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    invoke-virtual {v1}, Lcom/ijinshan/kpref/t;->c()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/ijinshan/kpref/t;->a(Landroid/content/Context;ILcom/ijinshan/kpref/PreferenceScreen;)Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/PreferenceActivity;->a(Lcom/ijinshan/kpref/PreferenceScreen;)V

    .line 266
    return-void
.end method

.method public final a(Lcom/ijinshan/kpref/PreferenceScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0, p1}, Lcom/ijinshan/kpref/t;->a(Lcom/ijinshan/kpref/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/ijinshan/kpref/PreferenceActivity;->c()V

    .line 226
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->c()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kpref/PreferenceScreen;->w()Ljava/lang/CharSequence;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    return-void
.end method

.method public a(Lcom/ijinshan/kpref/PreferenceScreen;Lcom/ijinshan/kpref/Preference;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/ijinshan/kpref/PreferenceScreen;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->c()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0, p1, p3}, Lcom/ijinshan/kpref/t;->a(ILandroid/content/Intent;)V

    .line 163
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 168
    invoke-direct {p0}, Lcom/ijinshan/kpref/PreferenceActivity;->c()V

    .line 169
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v0, 0x7f0300a3

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/PreferenceActivity;->setContentView(I)V

    .line 111
    new-instance v0, Lcom/ijinshan/kpref/t;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/t;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/t;->a(Lcom/ijinshan/kpref/x;)V

    iput-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    .line 112
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 113
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 126
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->h()V

    .line 127
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->j()V

    .line 296
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 143
    const-string v0, "android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    invoke-virtual {v1}, Lcom/ijinshan/kpref/t;->c()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Landroid/os/Bundle;)V

    .line 148
    iput-object p1, p0, Lcom/ijinshan/kpref/PreferenceActivity;->c:Landroid/os/Bundle;

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->c()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 136
    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Landroid/os/Bundle;)V

    .line 137
    const-string v0, "android:preferences"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 139
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 119
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceActivity;->b:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->g()V

    .line 120
    return-void
.end method
