.class public Lorg/antivirus/wipe/WipeByApp;
.super Lorg/antivirus/ui/BaseToolActivity;


# static fields
.field public static final c:Lorg/antivirus/wipe/ai;

.field static d:Ljava/util/HashMap;

.field static e:Ljava/util/HashMap;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Ljava/util/HashMap;

.field private f:Ljava/util/ArrayList;

.field private g:Landroid/widget/CheckBox;

.field private h:I

.field private i:Z

.field private j:Landroid/app/AlertDialog;

.field private k:Landroid/app/ProgressDialog;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/antivirus/wipe/ai;

    invoke-static {}, Lorg/antivirus/AvApplication;->getInstance()Lorg/antivirus/AvApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/antivirus/wipe/ai;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/antivirus/wipe/WipeByApp;->c:Lorg/antivirus/wipe/ai;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/antivirus/wipe/WipeByApp;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/antivirus/wipe/WipeByApp;->e:Ljava/util/HashMap;

    sget-object v0, Lorg/antivirus/wipe/WipeByApp;->d:Ljava/util/HashMap;

    const v1, 0x7f0900ae

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/wipe/d;

    invoke-direct {v2}, Lorg/antivirus/wipe/d;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/wipe/WipeByApp;->d:Ljava/util/HashMap;

    const v1, 0x7f0900af

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/wipe/o;

    invoke-direct {v2}, Lorg/antivirus/wipe/o;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/wipe/WipeByApp;->e:Ljava/util/HashMap;

    const v1, 0x7f0900b0

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/wipe/p;

    invoke-direct {v2}, Lorg/antivirus/wipe/p;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/wipe/WipeByApp;->e:Ljava/util/HashMap;

    const v1, 0x7f0900b1

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/wipe/q;

    invoke-direct {v2}, Lorg/antivirus/wipe/q;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/wipe/WipeByApp;->e:Ljava/util/HashMap;

    const v1, 0x7f0900b2

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/wipe/r;

    invoke-direct {v2}, Lorg/antivirus/wipe/r;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/antivirus/wipe/WipeByApp;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/wipe/WipeByApp;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->b:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/wipe/WipeByApp;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->j:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/wipe/WipeByApp;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/WipeByApp;->j:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/wipe/WipeByApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/WipeByApp;->k:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private a(Landroid/view/LayoutInflater;)V
    .locals 9

    const/4 v2, 0x0

    const v1, 0x7f080130

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/antivirus/wipe/WipeByApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/antivirus/wipe/WipeByApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.contacts.action.PICK_CONTACT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    :cond_0
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    iget-object v3, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v3, v2

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v8, "DialtactsActivity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/antivirus/wipe/WipeByApp;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    const v2, 0x7f03000a

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v2, 0x7f080053

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f080054

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/CheckBox;

    move-object v4, v0

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v2, p0, Lorg/antivirus/wipe/WipeByApp;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f080052

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v7, 0x7f0900b0

    invoke-static {v7}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x7f02016d

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_3
    :goto_2
    new-instance v2, Lorg/antivirus/wipe/e;

    invoke-direct {v2, p0, v4, v3}, Lorg/antivirus/wipe/e;-><init>(Lorg/antivirus/wipe/WipeByApp;Landroid/widget/CheckBox;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not populate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    const v7, 0x7f0900b1

    :try_start_1
    invoke-static {v7}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const v7, 0x7f020170

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_6
    const v7, 0x7f0900b2

    invoke-static {v7}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const v7, 0x7f02016e

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic a(Lorg/antivirus/wipe/WipeByApp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/antivirus/wipe/WipeByApp;->i:Z

    return p1
.end method

.method private b(Landroid/view/LayoutInflater;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "com.android.browser"

    aput-object v0, v4, v1

    const/4 v0, 0x1

    const-string v3, "com.google.android.browser"

    aput-object v3, v4, v0

    const/4 v0, 0x2

    const-string v3, "com.sony.nfx.app.browser"

    aput-object v3, v4, v0

    const v0, 0x7f080132

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeByApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/antivirus/wipe/WipeByApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move v8, v1

    move-object v1, v2

    move v2, v8

    :goto_0
    array-length v3, v4

    if-ge v2, v3, :cond_0

    if-nez v1, :cond_0

    :try_start_0
    aget-object v3, v4, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "could not get browser app info "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-nez v1, :cond_2

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    sget-object v1, Lorg/antivirus/wipe/WipeByApp;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v2, 0x7f080053

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f080054

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v3, p0, Lorg/antivirus/wipe/WipeByApp;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f080052

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v6, 0x7f0900ae

    invoke-static {v6}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f02016f

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_3
    :goto_4
    new-instance v3, Lorg/antivirus/wipe/f;

    invoke-direct {v3, p0, v2, v1}, Lorg/antivirus/wipe/f;-><init>(Lorg/antivirus/wipe/WipeByApp;Landroid/widget/CheckBox;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not populate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const v6, 0x7f0900af

    :try_start_2
    invoke-static {v6}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f02016c

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method

.method static synthetic b(Lorg/antivirus/wipe/WipeByApp;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/antivirus/wipe/k;

    invoke-direct {v1, p0}, Lorg/antivirus/wipe/k;-><init>(Lorg/antivirus/wipe/WipeByApp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lorg/antivirus/wipe/WipeByApp;Z)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->k:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lorg/antivirus/wipe/WipeByApp;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/antivirus/wipe/l;

    invoke-direct {v0, p0, p1}, Lorg/antivirus/wipe/l;-><init>(Lorg/antivirus/wipe/WipeByApp;Z)V

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeByApp;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lorg/antivirus/wipe/WipeByApp;)V
    .locals 3

    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeByApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lorg/antivirus/wipe/WipeByApp;->h:I

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090077

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/antivirus/wipe/WipeByApp;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lorg/antivirus/wipe/WipeByApp;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/wipe/WipeByApp;->i:Z

    return v0
.end method

.method static synthetic e(Lorg/antivirus/wipe/WipeByApp;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lorg/antivirus/wipe/WipeByApp;)I
    .locals 2

    iget v0, p0, Lorg/antivirus/wipe/WipeByApp;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/antivirus/wipe/WipeByApp;->h:I

    return v0
.end method

.method static synthetic g(Lorg/antivirus/wipe/WipeByApp;)I
    .locals 1

    iget v0, p0, Lorg/antivirus/wipe/WipeByApp;->h:I

    return v0
.end method

.method static synthetic h(Lorg/antivirus/wipe/WipeByApp;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic i(Lorg/antivirus/wipe/WipeByApp;)I
    .locals 2

    iget v0, p0, Lorg/antivirus/wipe/WipeByApp;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/antivirus/wipe/WipeByApp;->h:I

    return v0
.end method

.method static synthetic j(Lorg/antivirus/wipe/WipeByApp;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/antivirus/wipe/WipeByApp;->h:I

    return v0
.end method

.method static synthetic k(Lorg/antivirus/wipe/WipeByApp;)V
    .locals 1

    new-instance v0, Lorg/antivirus/wipe/n;

    invoke-direct {v0, p0}, Lorg/antivirus/wipe/n;-><init>(Lorg/antivirus/wipe/WipeByApp;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeByApp;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic l(Lorg/antivirus/wipe/WipeByApp;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->k:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected final c()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/antivirus/wipe/WipeByApp;->h:I

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v2, Lorg/antivirus/wipe/g;

    invoke-direct {v2, p0, v0}, Lorg/antivirus/wipe/g;-><init>(Lorg/antivirus/wipe/WipeByApp;Landroid/widget/CheckBox;)V

    invoke-virtual {p0, v2}, Lorg/antivirus/wipe/WipeByApp;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/antivirus/wipe/h;

    invoke-direct {v0, p0}, Lorg/antivirus/wipe/h;-><init>(Lorg/antivirus/wipe/WipeByApp;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeByApp;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final d()V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/antivirus/wipe/WipeByApp;->h:I

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->g:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v2, Lorg/antivirus/wipe/i;

    invoke-direct {v2, p0, v0}, Lorg/antivirus/wipe/i;-><init>(Lorg/antivirus/wipe/WipeByApp;Landroid/widget/CheckBox;)V

    invoke-virtual {p0, v2}, Lorg/antivirus/wipe/WipeByApp;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/antivirus/wipe/j;

    invoke-direct {v0, p0}, Lorg/antivirus/wipe/j;-><init>(Lorg/antivirus/wipe/WipeByApp;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeByApp;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeByApp;->setContentView(I)V

    const/4 v1, 0x1

    const v2, 0x7f020172

    const v3, 0x7f020171

    const v0, 0x7f0900a2

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/wipe/WipeByApp;->a(ZIILjava/lang/String;Z)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeByApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/compatibility/DonutTools;->getDisplayDensity(Landroid/view/Display;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lorg/antivirus/wipe/WipeByApp;->l:I

    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeByApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901d1

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeByApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090077

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/antivirus/wipe/s;

    invoke-direct {v1, p0}, Lorg/antivirus/wipe/s;-><init>(Lorg/antivirus/wipe/WipeByApp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08012d

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeByApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900a3

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080131

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeByApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900a4

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08012f

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeByApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900a5

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeByApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->g:Landroid/widget/CheckBox;

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->g:Landroid/widget/CheckBox;

    new-instance v1, Lorg/antivirus/wipe/w;

    invoke-direct {v1, p0}, Lorg/antivirus/wipe/w;-><init>(Lorg/antivirus/wipe/WipeByApp;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lorg/antivirus/wipe/WipeByApp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v0, 0x7f08012e

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeByApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v4, Lorg/antivirus/wipe/AccountWrapper;

    invoke-direct {v4}, Lorg/antivirus/wipe/AccountWrapper;-><init>()V

    invoke-virtual {v4, p0}, Lorg/antivirus/wipe/AccountWrapper;->getAccountNames(Landroid/content/Context;)[Lorg/antivirus/wipe/a;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v8, v6, v5

    iget-object v1, p0, Lorg/antivirus/wipe/WipeByApp;->b:Ljava/util/HashMap;

    iget-object v2, v8, Lorg/antivirus/wipe/a;->a:Ljava/lang/String;

    new-instance v9, Lorg/antivirus/wipe/y;

    invoke-direct {v9, p0, v8}, Lorg/antivirus/wipe/y;-><init>(Lorg/antivirus/wipe/WipeByApp;Lorg/antivirus/wipe/a;)V

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f03003c

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v1, 0x7f080053

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v8, Lorg/antivirus/wipe/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080054

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v2, p0, Lorg/antivirus/wipe/WipeByApp;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f080052

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v10, v8, Lorg/antivirus/wipe/a;->b:Ljava/lang/String;

    invoke-virtual {v4, p0, v10}, Lorg/antivirus/wipe/AccountWrapper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lorg/antivirus/wipe/z;

    invoke-direct {v2, p0, v1, v8}, Lorg/antivirus/wipe/z;-><init>(Lorg/antivirus/wipe/WipeByApp;Landroid/widget/CheckBox;Lorg/antivirus/wipe/a;)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not populate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v3}, Lorg/antivirus/wipe/WipeByApp;->b(Landroid/view/LayoutInflater;)V

    invoke-direct {p0, v3}, Lorg/antivirus/wipe/WipeByApp;->a(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->j:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->k:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onDestroy()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->k:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "progress"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->j:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/wipe/WipeByApp;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "alert"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
