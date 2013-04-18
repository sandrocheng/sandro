.class public Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;
.super Landroid/app/ListActivity;
.source "SaveTrafficWhiteListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/ListAdapter;

.field private c:[Lcom/keniu/security/traffic/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;)[Lcom/keniu/security/traffic/f;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->c:[Lcom/keniu/security/traffic/f;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080330

    if-ne v0, v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;)V

    .line 133
    invoke-virtual {p0}, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->finish()V

    .line 135
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->requestWindowFeature(I)Z

    .line 37
    const v0, 0x7f0300de

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->setContentView(I)V

    .line 38
    invoke-static {p0}, Lcom/keniu/security/traffic/q;->a(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0}, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->a:Landroid/widget/ListView;

    .line 40
    invoke-virtual {p0}, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/e;->c(Landroid/content/Context;Z)[Lcom/keniu/security/traffic/f;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->c:[Lcom/keniu/security/traffic/f;

    .line 41
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->c:[Lcom/keniu/security/traffic/f;

    sget-object v1, Lcom/keniu/security/traffic/z;->h:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 42
    invoke-virtual {p0}, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/keniu/security/traffic/s;

    iget-object v2, p0, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->c:[Lcom/keniu/security/traffic/f;

    invoke-direct {v1, p0, p0, v2, v0}, Lcom/keniu/security/traffic/s;-><init>(Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;Landroid/content/Context;[Lcom/keniu/security/traffic/f;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->b:Landroid/widget/ListAdapter;

    .line 75
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->b:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    const v0, 0x7f080330

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 120
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->c:[Lcom/keniu/security/traffic/f;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->c:[Lcom/keniu/security/traffic/f;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 122
    iget-object v3, v3, Lcom/keniu/security/traffic/f;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iput-object v4, p0, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->c:[Lcom/keniu/security/traffic/f;

    .line 126
    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 127
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 90
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->c:[Lcom/keniu/security/traffic/f;

    aget-object v1, v0, p3

    .line 91
    iget-boolean v0, v1, Lcom/keniu/security/traffic/f;->d:Z

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 94
    iget v0, v0, Lcom/keniu/security/traffic/y;->w:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 96
    const-string v0, "\u8be5\u7a0b\u5e8f2G/3G\u8054\u7f51\u6743\u9650\u5df2\u88ab\u7981\u6b62,\u8bf7\u5728\u9632\u706b\u5899\u4e2d\u5141\u8bb8\u540e\u8bbe\u7f6e"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/t;

    iget-object v0, v0, Lcom/keniu/security/traffic/t;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iput-boolean v5, v1, Lcom/keniu/security/traffic/f;->d:Z

    .line 105
    invoke-virtual {p0}, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/e;->b(Landroid/content/Context;)V

    .line 106
    const-string v0, " \u6dfb\u52a0\u6210\u529f\uff0c\u5df2\u53d6\u6d88\u9632\u706b\u5899\u4e2d\u8be5\u7a0b\u5e8f\u8054\u7f51\u7981\u6b62"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/t;

    iget-object v0, p0, Lcom/keniu/security/traffic/t;->a:Landroid/widget/CheckBox;

    .line 112
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 113
    if-nez v2, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 114
    if-nez v2, :cond_3

    move v0, v4

    :goto_2
    iput-boolean v0, v1, Lcom/keniu/security/traffic/f;->k:Z

    goto :goto_0

    :cond_2
    move v3, v5

    .line 113
    goto :goto_1

    :cond_3
    move v0, v5

    .line 114
    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;)V

    .line 141
    invoke-virtual {p0}, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->finish()V

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
