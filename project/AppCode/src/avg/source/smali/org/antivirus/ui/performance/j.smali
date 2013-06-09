.class final Lorg/antivirus/ui/performance/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/LayoutInflater;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Lorg/antivirus/ui/performance/TaskKiller;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/performance/TaskKiller;Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/performance/j;->c:Lorg/antivirus/ui/performance/TaskKiller;

    iput-object p2, p0, Lorg/antivirus/ui/performance/j;->a:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lorg/antivirus/ui/performance/j;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/antivirus/ui/performance/j;->c:Lorg/antivirus/ui/performance/TaskKiller;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Lorg/antivirus/ui/performance/TaskKiller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_4

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v9, v8

    move v0, v1

    :goto_2
    if-ge v0, v9, :cond_1

    aget-object v10, v8, v0

    if-eqz v10, :cond_0

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/performance/j;->c:Lorg/antivirus/ui/performance/TaskKiller;

    invoke-virtual {v0}, Lorg/antivirus/ui/performance/TaskKiller;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v2, :cond_2

    iget-object v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/antivirus/ui/performance/j;->c:Lorg/antivirus/ui/performance/TaskKiller;

    invoke-static {v7}, Lorg/antivirus/ui/performance/TaskKiller;->a(Lorg/antivirus/ui/performance/TaskKiller;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v7, Lorg/antivirus/ui/performance/o;

    iget-object v8, p0, Lorg/antivirus/ui/performance/j;->c:Lorg/antivirus/ui/performance/TaskKiller;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lorg/antivirus/ui/performance/o;-><init>(Lorg/antivirus/ui/performance/TaskKiller;B)V

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lorg/antivirus/ui/performance/o;->a:Ljava/lang/String;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v7, Lorg/antivirus/ui/performance/o;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/antivirus/ui/performance/j;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030036

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v7, Lorg/antivirus/ui/performance/o;->d:Landroid/view/View;

    iget-object v0, p0, Lorg/antivirus/ui/performance/j;->b:Landroid/widget/LinearLayout;

    iput-object v0, v7, Lorg/antivirus/ui/performance/o;->e:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f080053

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v7, v7, Lorg/antivirus/ui/performance/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f080052

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/antivirus/ui/performance/k;

    invoke-direct {v0, p0, v2}, Lorg/antivirus/ui/performance/k;-><init>(Lorg/antivirus/ui/performance/j;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/antivirus/ui/performance/j;->c:Lorg/antivirus/ui/performance/TaskKiller;

    new-instance v7, Lorg/antivirus/ui/performance/m;

    invoke-direct {v7, p0, v2}, Lorg/antivirus/ui/performance/m;-><init>(Lorg/antivirus/ui/performance/j;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Lorg/antivirus/ui/performance/TaskKiller;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v2, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_3
    move-object v2, v3

    goto/16 :goto_1

    :cond_4
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/performance/o;

    :try_start_1
    iget-object v2, p0, Lorg/antivirus/ui/performance/j;->c:Lorg/antivirus/ui/performance/TaskKiller;

    invoke-virtual {v2}, Lorg/antivirus/ui/performance/TaskKiller;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v0, Lorg/antivirus/ui/performance/o;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lorg/antivirus/ui/performance/o;->c:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    iget-object v2, p0, Lorg/antivirus/ui/performance/j;->c:Lorg/antivirus/ui/performance/TaskKiller;

    new-instance v3, Lorg/antivirus/ui/performance/n;

    invoke-direct {v3, p0, v5, v1, v0}, Lorg/antivirus/ui/performance/n;-><init>(Lorg/antivirus/ui/performance/j;Ljava/util/ArrayList;ILorg/antivirus/ui/performance/o;)V

    invoke-virtual {v2, v3}, Lorg/antivirus/ui/performance/TaskKiller;->runOnUiThread(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :catch_1
    move-exception v2

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    goto :goto_5

    :cond_5
    return-void

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_6
    move-object v2, v3

    goto/16 :goto_1

    :cond_7
    move-object v4, v3

    goto/16 :goto_0
.end method
