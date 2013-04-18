.class public final Lcom/ijinshan/kpref/PreferenceScreen;
.super Lcom/ijinshan/kpref/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private o:Landroid/widget/ListAdapter;

.field private p:Landroid/app/Dialog;

.field private q:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/ijinshan/kpref/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceScreen;->D()Landroid/content/Context;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/ijinshan/kpref/PreferenceScreen;->q:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/ijinshan/kpref/PreferenceScreen;->q:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    :cond_0
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ijinshan/kpref/PreferenceScreen;->q:Landroid/widget/ListView;

    .line 154
    iget-object v1, p0, Lcom/ijinshan/kpref/PreferenceScreen;->q:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Landroid/widget/ListView;)V

    .line 157
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceScreen;->w()Ljava/lang/CharSequence;

    move-result-object v1

    .line 158
    new-instance v2, Landroid/app/Dialog;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x1030006

    :goto_0
    invoke-direct {v2, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/ijinshan/kpref/PreferenceScreen;->p:Landroid/app/Dialog;

    .line 161
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceScreen;->q:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    :cond_1
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 166
    if-eqz p1, :cond_2

    .line 167
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceScreen;->I()Lcom/ijinshan/kpref/t;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/t;->a(Landroid/content/DialogInterface;)V

    .line 173
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 174
    return-void

    .line 158
    :cond_3
    const v3, 0x1030005

    goto :goto_0
.end method

.method private g()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceScreen;->o:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/ijinshan/kpref/p;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/p;-><init>(Lcom/ijinshan/kpref/PreferenceGroup;)V

    iput-object v0, p0, Lcom/ijinshan/kpref/PreferenceScreen;->o:Landroid/widget/ListAdapter;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceScreen;->o:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method private h()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/ijinshan/kpref/p;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/p;-><init>(Lcom/ijinshan/kpref/PreferenceGroup;)V

    return-object v0
.end method

.method private i()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceScreen;->p:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method protected final K_()V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceScreen;->r()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceScreen;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->e(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected final a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 219
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/ijinshan/kpref/PreferenceScreen$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    :cond_0
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/PreferenceGroup;->a(Landroid/os/Parcelable;)V

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    check-cast p1, Lcom/ijinshan/kpref/PreferenceScreen$SavedState;

    .line 226
    invoke-virtual {p1}, Lcom/ijinshan/kpref/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/ijinshan/kpref/PreferenceGroup;->a(Landroid/os/Parcelable;)V

    .line 227
    iget-boolean v0, p1, Lcom/ijinshan/kpref/PreferenceScreen$SavedState;->a:Z

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p1, Lcom/ijinshan/kpref/PreferenceScreen$SavedState;->b:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->e(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/ListView;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    invoke-direct {p0}, Lcom/ijinshan/kpref/PreferenceScreen;->g()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceScreen;->J()V

    .line 137
    return-void
.end method

.method protected final d()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 205
    invoke-super {p0}, Lcom/ijinshan/kpref/PreferenceGroup;->d()Landroid/os/Parcelable;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/ijinshan/kpref/PreferenceScreen;->p:Landroid/app/Dialog;

    .line 207
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-object v0

    .line 211
    :cond_1
    new-instance v2, Lcom/ijinshan/kpref/PreferenceScreen$SavedState;

    invoke-direct {v2, v0}, Lcom/ijinshan/kpref/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/ijinshan/kpref/PreferenceScreen$SavedState;->a:Z

    .line 213
    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v2, Lcom/ijinshan/kpref/PreferenceScreen$SavedState;->b:Landroid/os/Bundle;

    move-object v0, v2

    .line 214
    goto :goto_0
.end method

.method protected final e()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kpref/PreferenceScreen;->p:Landroid/app/Dialog;

    .line 178
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceScreen;->I()Lcom/ijinshan/kpref/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/DialogInterface;)V

    .line 179
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/ijinshan/kpref/PreferenceScreen;->g()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 192
    instance-of v1, v0, Lcom/ijinshan/kpref/Preference;

    if-nez v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    check-cast v0, Lcom/ijinshan/kpref/Preference;

    .line 195
    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/PreferenceScreen;)V

    goto :goto_0
.end method
