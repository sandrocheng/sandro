.class Lcom/antivirus/applocker/i;
.super Landroid/os/AsyncTask;


# instance fields
.field public volatile a:Z

.field final b:[Ljava/lang/String;

.field c:Ljava/util/Map;

.field final synthetic d:Lcom/antivirus/applocker/g;


# direct methods
.method public constructor <init>(Lcom/antivirus/applocker/g;Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/antivirus/applocker/i;->d:Lcom/antivirus/applocker/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lcom/antivirus/applocker/i;->a:Z

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/antivirus/applocker/i;->b:[Ljava/lang/String;

    new-instance v0, Lcom/antivirus/applocker/c;

    invoke-direct {v0}, Lcom/antivirus/applocker/c;-><init>()V

    invoke-virtual {v0, p2}, Lcom/antivirus/applocker/c;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/applocker/i;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/antivirus/applocker/i;->d:Lcom/antivirus/applocker/g;

    invoke-static {v3}, Lcom/antivirus/applocker/g;->c(Lcom/antivirus/applocker/g;)Lcom/avg/ui/general/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avg/ui/general/a/a;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    new-instance v4, Lcom/antivirus/applocker/j;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/antivirus/applocker/j;-><init>(Lcom/antivirus/applocker/i;Lcom/antivirus/applocker/h;)V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.settings.SETTINGS"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v1, :cond_2

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v5, Lcom/antivirus/applocker/k;

    iget-object v6, p0, Lcom/antivirus/applocker/i;->d:Lcom/antivirus/applocker/g;

    invoke-direct {v5, v6}, Lcom/antivirus/applocker/k;-><init>(Lcom/antivirus/applocker/g;)V

    iput-object v0, v5, Lcom/antivirus/applocker/k;->b:Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Lcom/antivirus/applocker/k;->b:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/antivirus/applocker/k;->a:Ljava/lang/String;

    iget-object v0, v5, Lcom/antivirus/applocker/k;->b:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/antivirus/applocker/i;->c:Ljava/util/Map;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/antivirus/applocker/i;->c:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/antivirus/applocker/i;->c:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/antivirus/applocker/k;->d:Z

    :cond_0
    iget-object v0, v5, Lcom/antivirus/applocker/k;->b:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lcom/antivirus/applocker/k;->c:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/antivirus/applocker/k;

    const/4 v6, 0x0

    aput-object v5, v0, v6

    invoke-virtual {p0, v0}, Lcom/antivirus/applocker/i;->publishProgress([Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/antivirus/applocker/i;->a:Z

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v5, Lcom/antivirus/applocker/k;

    iget-object v0, p0, Lcom/antivirus/applocker/i;->d:Lcom/antivirus/applocker/g;

    invoke-direct {v5, v0}, Lcom/antivirus/applocker/k;-><init>(Lcom/antivirus/applocker/g;)V

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, v5, Lcom/antivirus/applocker/k;->b:Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Lcom/antivirus/applocker/k;->b:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/antivirus/applocker/k;->a:Ljava/lang/String;

    iget-object v0, v5, Lcom/antivirus/applocker/k;->b:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v5, Lcom/antivirus/applocker/k;->b:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move v0, v2

    :goto_1
    iget-object v7, p0, Lcom/antivirus/applocker/i;->b:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_6

    iget-object v7, p0, Lcom/antivirus/applocker/i;->b:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v0, v1

    :goto_2
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/applocker/i;->c:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/antivirus/applocker/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/antivirus/applocker/i;->c:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/antivirus/applocker/k;->d:Z

    :cond_3
    iget-object v0, v5, Lcom/antivirus/applocker/k;->b:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lcom/antivirus/applocker/k;->c:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/antivirus/applocker/k;

    const/4 v6, 0x0

    aput-object v5, v0, v6

    invoke-virtual {p0, v0}, Lcom/antivirus/applocker/i;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/applocker/i;->d:Lcom/antivirus/applocker/g;

    invoke-static {v0}, Lcom/antivirus/applocker/g;->b(Lcom/antivirus/applocker/g;)Lcom/antivirus/applocker/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/applocker/l;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/antivirus/applocker/i;->d:Lcom/antivirus/applocker/g;

    invoke-static {v0}, Lcom/antivirus/applocker/g;->d(Lcom/antivirus/applocker/g;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/applocker/i;->d:Lcom/antivirus/applocker/g;

    invoke-virtual {v1}, Lcom/antivirus/applocker/g;->h()Landroid/support/v4/app/i;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/antivirus/applocker/i;->d:Lcom/antivirus/applocker/g;

    invoke-virtual {v2}, Lcom/antivirus/applocker/g;->h()Landroid/support/v4/app/i;

    move-result-object v2

    const v3, 0x7f090127

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/applocker/i;->d:Lcom/antivirus/applocker/g;

    invoke-static {v2}, Lcom/antivirus/applocker/g;->a(Lcom/antivirus/applocker/g;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/applocker/i;->d:Lcom/antivirus/applocker/g;

    invoke-static {v0}, Lcom/antivirus/applocker/g;->a(Lcom/antivirus/applocker/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/antivirus/applocker/i;->d:Lcom/antivirus/applocker/g;

    invoke-static {v1}, Lcom/antivirus/applocker/g;->e(Lcom/antivirus/applocker/g;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/i;->d:Lcom/antivirus/applocker/g;

    invoke-static {v0}, Lcom/antivirus/applocker/g;->d(Lcom/antivirus/applocker/g;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected varargs a([Lcom/antivirus/applocker/k;)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/antivirus/applocker/i;->a:Z

    if-eqz v0, :cond_1

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/applocker/i;->d:Lcom/antivirus/applocker/g;

    invoke-static {v0}, Lcom/antivirus/applocker/g;->a(Lcom/antivirus/applocker/g;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/antivirus/applocker/i;->d:Lcom/antivirus/applocker/g;

    invoke-static {v0}, Lcom/antivirus/applocker/g;->b(Lcom/antivirus/applocker/g;)Lcom/antivirus/applocker/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/applocker/l;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/antivirus/applocker/i;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/applocker/i;->a:Z

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/antivirus/applocker/i;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/antivirus/applocker/k;

    invoke-virtual {p0, p1}, Lcom/antivirus/applocker/i;->a([Lcom/antivirus/applocker/k;)V

    return-void
.end method
