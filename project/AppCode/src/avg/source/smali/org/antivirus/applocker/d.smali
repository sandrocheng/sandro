.class final Lorg/antivirus/applocker/d;
.super Landroid/os/AsyncTask;


# instance fields
.field public volatile a:Z

.field final b:[Ljava/lang/String;

.field c:Ljava/util/Map;

.field final synthetic d:Lorg/antivirus/applocker/AppLockerActivity;


# direct methods
.method public constructor <init>(Lorg/antivirus/applocker/AppLockerActivity;Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    iput-object p1, p0, Lorg/antivirus/applocker/d;->d:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lorg/antivirus/applocker/d;->a:Z

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/antivirus/applocker/d;->b:[Ljava/lang/String;

    new-instance v0, Lorg/antivirus/applocker/a;

    invoke-direct {v0}, Lorg/antivirus/applocker/a;-><init>()V

    invoke-static {p2}, Lorg/antivirus/applocker/a;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/applocker/d;->c:Ljava/util/Map;

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
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

    iget-object v3, p0, Lorg/antivirus/applocker/d;->d:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-virtual {v3}, Lorg/antivirus/applocker/AppLockerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

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

    if-lez v5, :cond_2

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v5, Lorg/antivirus/applocker/e;

    iget-object v6, p0, Lorg/antivirus/applocker/d;->d:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-direct {v5, v6}, Lorg/antivirus/applocker/e;-><init>(Lorg/antivirus/applocker/AppLockerActivity;)V

    iput-object v0, v5, Lorg/antivirus/applocker/e;->b:Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Lorg/antivirus/applocker/e;->b:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/applocker/e;->a:Ljava/lang/String;

    iget-object v0, v5, Lorg/antivirus/applocker/e;->b:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lorg/antivirus/applocker/d;->c:Ljava/util/Map;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/antivirus/applocker/d;->c:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/antivirus/applocker/d;->c:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, v5, Lorg/antivirus/applocker/e;->d:Z

    :cond_0
    iget-object v0, v5, Lorg/antivirus/applocker/e;->b:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/applocker/e;->c:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/antivirus/applocker/e;

    const/4 v6, 0x0

    aput-object v5, v0, v6

    invoke-virtual {p0, v0}, Lorg/antivirus/applocker/d;->publishProgress([Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/antivirus/applocker/d;->a:Z

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v5, Lorg/antivirus/applocker/e;

    iget-object v0, p0, Lorg/antivirus/applocker/d;->d:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-direct {v5, v0}, Lorg/antivirus/applocker/e;-><init>(Lorg/antivirus/applocker/AppLockerActivity;)V

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, v5, Lorg/antivirus/applocker/e;->b:Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Lorg/antivirus/applocker/e;->b:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/applocker/e;->a:Ljava/lang/String;

    iget-object v0, v5, Lorg/antivirus/applocker/e;->b:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v5, Lorg/antivirus/applocker/e;->b:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move v0, v2

    :goto_1
    iget-object v7, p0, Lorg/antivirus/applocker/d;->b:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_6

    iget-object v7, p0, Lorg/antivirus/applocker/d;->b:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v0, v1

    :goto_2
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/applocker/d;->c:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/antivirus/applocker/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/antivirus/applocker/d;->c:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, v5, Lorg/antivirus/applocker/e;->d:Z

    :cond_3
    iget-object v0, v5, Lorg/antivirus/applocker/e;->b:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/applocker/e;->c:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/antivirus/applocker/e;

    const/4 v6, 0x0

    aput-object v5, v0, v6

    invoke-virtual {p0, v0}, Lorg/antivirus/applocker/d;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

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


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/applocker/d;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/applocker/d;->a:Z

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/applocker/d;->d:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v0}, Lorg/antivirus/applocker/AppLockerActivity;->b(Lorg/antivirus/applocker/AppLockerActivity;)Lorg/antivirus/applocker/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/applocker/f;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/antivirus/applocker/d;->d:Lorg/antivirus/applocker/AppLockerActivity;

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Lorg/antivirus/applocker/AppLockerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090058

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/antivirus/applocker/d;->d:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v2}, Lorg/antivirus/applocker/AppLockerActivity;->a(Lorg/antivirus/applocker/AppLockerActivity;)Ljava/util/ArrayList;

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

    iget-object v0, p0, Lorg/antivirus/applocker/d;->d:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-virtual {v0}, Lorg/antivirus/applocker/AppLockerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckItemIds()[J

    iget-object v0, p0, Lorg/antivirus/applocker/d;->d:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v0}, Lorg/antivirus/applocker/AppLockerActivity;->a(Lorg/antivirus/applocker/AppLockerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/antivirus/applocker/d;->d:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v1}, Lorg/antivirus/applocker/AppLockerActivity;->e(Lorg/antivirus/applocker/AppLockerActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/antivirus/applocker/d;->d:Lorg/antivirus/applocker/AppLockerActivity;

    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Lorg/antivirus/applocker/AppLockerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    check-cast p1, [Lorg/antivirus/applocker/e;

    :try_start_0
    iget-boolean v0, p0, Lorg/antivirus/applocker/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/applocker/d;->d:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v0}, Lorg/antivirus/applocker/AppLockerActivity;->a(Lorg/antivirus/applocker/AppLockerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/antivirus/applocker/d;->d:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v0}, Lorg/antivirus/applocker/AppLockerActivity;->b(Lorg/antivirus/applocker/AppLockerActivity;)Lorg/antivirus/applocker/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/applocker/f;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
