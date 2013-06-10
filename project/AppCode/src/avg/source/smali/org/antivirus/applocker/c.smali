.class final Lorg/antivirus/applocker/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/applocker/AppLockerActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/applocker/AppLockerActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/applocker/c;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/antivirus/applocker/c;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v0}, Lorg/antivirus/applocker/AppLockerActivity;->a(Lorg/antivirus/applocker/AppLockerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/applocker/e;

    iget-object v1, v0, Lorg/antivirus/applocker/e;->b:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move v3, v4

    move v2, v4

    :goto_0
    iget-object v1, p0, Lorg/antivirus/applocker/c;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v1}, Lorg/antivirus/applocker/AppLockerActivity;->a(Lorg/antivirus/applocker/AppLockerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    int-to-long v7, v3

    cmp-long v1, v7, p4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/antivirus/applocker/c;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v1}, Lorg/antivirus/applocker/AppLockerActivity;->a(Lorg/antivirus/applocker/AppLockerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antivirus/applocker/e;

    iget-object v1, v1, Lorg/antivirus/applocker/e;->b:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/antivirus/applocker/c;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v1}, Lorg/antivirus/applocker/AppLockerActivity;->b(Lorg/antivirus/applocker/AppLockerActivity;)Lorg/antivirus/applocker/f;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/antivirus/applocker/f;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antivirus/applocker/e;

    iget-object v2, p0, Lorg/antivirus/applocker/c;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v2}, Lorg/antivirus/applocker/AppLockerActivity;->a(Lorg/antivirus/applocker/AppLockerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antivirus/applocker/e;

    iget-boolean v2, v2, Lorg/antivirus/applocker/e;->d:Z

    if-nez v2, :cond_1

    move v2, v5

    :goto_1
    iput-boolean v2, v1, Lorg/antivirus/applocker/e;->d:Z

    move v2, v5

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    iget-boolean v1, v0, Lorg/antivirus/applocker/e;->d:Z

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lorg/antivirus/applocker/c;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v3}, Lorg/antivirus/applocker/AppLockerActivity;->c(Lorg/antivirus/applocker/AppLockerActivity;)J

    move-result-wide v6

    sub-long/2addr v1, v6

    const-wide/16 v6, 0x1388

    cmp-long v1, v1, v6

    if-lez v1, :cond_3

    iget-object v1, p0, Lorg/antivirus/applocker/c;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/antivirus/applocker/AppLockerActivity;->a(Lorg/antivirus/applocker/AppLockerActivity;J)J

    iget-object v1, p0, Lorg/antivirus/applocker/c;->a:Lorg/antivirus/applocker/AppLockerActivity;

    const v2, 0x7f09005f

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_3
    iget-object v1, p0, Lorg/antivirus/applocker/c;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v1}, Lorg/antivirus/applocker/AppLockerActivity;->d(Lorg/antivirus/applocker/AppLockerActivity;)Z

    iget-object v1, p0, Lorg/antivirus/applocker/c;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v1}, Lorg/antivirus/applocker/AppLockerActivity;->b(Lorg/antivirus/applocker/AppLockerActivity;)Lorg/antivirus/applocker/f;

    move-result-object v1

    long-to-int v2, p4

    invoke-virtual {v1, v2}, Lorg/antivirus/applocker/f;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antivirus/applocker/e;

    iget-boolean v0, v0, Lorg/antivirus/applocker/e;->d:Z

    if-nez v0, :cond_4

    :goto_2
    iput-boolean v5, v1, Lorg/antivirus/applocker/e;->d:Z

    iget-object v0, p0, Lorg/antivirus/applocker/c;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v0}, Lorg/antivirus/applocker/AppLockerActivity;->b(Lorg/antivirus/applocker/AppLockerActivity;)Lorg/antivirus/applocker/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/applocker/f;->notifyDataSetChanged()V

    return-void

    :cond_4
    move v5, v4

    goto :goto_2
.end method
