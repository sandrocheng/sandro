.class public abstract Lcom/avast/android/generic/ui/b/d;
.super Ljava/lang/Object;
.source "ProblemCheckerRowResource.java"


# instance fields
.field private a:I

.field private b:Lcom/avast/android/generic/ui/b/f;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/generic/ui/b/d;->e:I

    .line 62
    iput p1, p0, Lcom/avast/android/generic/ui/b/d;->a:I

    .line 63
    iput p2, p0, Lcom/avast/android/generic/ui/b/d;->c:I

    .line 64
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput p1, p0, Lcom/avast/android/generic/ui/b/d;->e:I

    .line 187
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/avast/android/generic/ui/b/d;->d:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public abstract a(Landroid/content/Context;Landroid/support/v4/app/Fragment;)Z
.end method

.method public a(Landroid/content/Context;Landroid/support/v4/app/Fragment;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 143
    if-nez p3, :cond_0

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/ui/b/d;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;)Z

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 148
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/ui/b/d;->e:I

    if-lez v0, :cond_3

    .line 150
    if-ne p3, v1, :cond_2

    .line 152
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/ui/b/d;->e(Landroid/content/Context;)V

    .line 167
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/d;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/avast/android/generic/ui/b/d;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/d;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-ne p3, v1, :cond_1

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/avast/android/generic/ui/b/d;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/d;->b:Lcom/avast/android/generic/ui/b/f;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/d;->b:Lcom/avast/android/generic/ui/b/f;

    invoke-interface {v0, p1}, Lcom/avast/android/generic/ui/b/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/avast/android/generic/ui/b/d;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/content/Context;)Landroid/text/Spanned;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/d;->b:Lcom/avast/android/generic/ui/b/f;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/avast/android/generic/ui/b/d;->b:Lcom/avast/android/generic/ui/b/f;

    invoke-interface {v0, p1}, Lcom/avast/android/generic/ui/b/f;->b(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/avast/android/generic/ui/b/d;->c:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter

    .prologue
    .line 132
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 133
    sget v1, Lcom/avast/android/generic/z;->d:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 134
    iget v1, p0, Lcom/avast/android/generic/ui/b/d;->e:I

    if-lez v1, :cond_0

    .line 135
    sget v1, Lcom/avast/android/generic/z;->ct:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/avast/android/generic/ui/b/d;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 137
    sget v1, Lcom/avast/android/generic/z;->c:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_1
    return-object v0
.end method

.method protected e(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 190
    iget v0, p0, Lcom/avast/android/generic/ui/b/d;->e:I

    if-gtz v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 194
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 196
    sget v2, Lcom/avast/android/generic/v;->B:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 197
    sget v0, Lcom/avast/android/generic/t;->k:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 199
    iget v3, p0, Lcom/avast/android/generic/ui/b/d;->e:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 202
    sget v0, Lcom/avast/android/generic/z;->i:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/avast/android/generic/ui/b/e;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/ui/b/e;-><init>(Lcom/avast/android/generic/ui/b/d;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 211
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
