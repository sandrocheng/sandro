.class public Lorg/antivirus/applocker/AppLockerActivity;
.super Lorg/antivirus/ui/BaseToolListActivity;

# interfaces
.implements Lorg/antivirus/ui/IhandleMenuItem;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lorg/antivirus/applocker/f;

.field private f:Ljava/util/ArrayList;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:J

.field private k:Lorg/antivirus/applocker/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolListActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->a:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->f:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lorg/antivirus/applocker/AppLockerActivity;->g:Z

    iput-boolean v1, p0, Lorg/antivirus/applocker/AppLockerActivity;->h:Z

    iput-boolean v1, p0, Lorg/antivirus/applocker/AppLockerActivity;->i:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->j:J

    return-void
.end method

.method static synthetic a(Lorg/antivirus/applocker/AppLockerActivity;J)J
    .locals 0

    iput-wide p1, p0, Lorg/antivirus/applocker/AppLockerActivity;->j:J

    return-wide p1
.end method

.method static synthetic a(Lorg/antivirus/applocker/AppLockerActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lorg/antivirus/applocker/AppLockerActivity;)Lorg/antivirus/applocker/f;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->c:Lorg/antivirus/applocker/f;

    return-object v0
.end method

.method private b(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->i:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lorg/antivirus/applocker/AppLockerActivity;->i:Z

    invoke-direct {p0}, Lorg/antivirus/applocker/AppLockerActivity;->d()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/antivirus/applocker/a;

    invoke-direct {v1}, Lorg/antivirus/applocker/a;-><init>()V

    invoke-static {p0, v0}, Lorg/antivirus/applocker/a;->a(Landroid/content/Context;[Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "LockedAppsCount"

    invoke-static {p0}, Lorg/antivirus/applocker/a;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v1

    sget-object v2, Lorg/antivirus/widget/a/i;->e:Lorg/antivirus/widget/a/i;

    invoke-virtual {v2}, Lorg/antivirus/widget/a/i;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/antivirus/widget/a/k;->a(Landroid/os/Bundle;I)Z

    if-nez p1, :cond_0

    const v0, 0x7f090042

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic c(Lorg/antivirus/applocker/AppLockerActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->j:J

    return-wide v0
.end method

.method static synthetic d(Lorg/antivirus/applocker/AppLockerActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->i:Z

    return v0
.end method

.method private d()[Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/applocker/e;

    iget-boolean v3, v0, Lorg/antivirus/applocker/e;->d:Z

    if-eqz v3, :cond_0

    iget-object v0, v0, Lorg/antivirus/applocker/e;->b:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lorg/antivirus/applocker/AppLockerActivity;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/applocker/AppLockerActivity;->d()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/antivirus/applocker/AppLockerActivity;->b(Z)V

    invoke-virtual {p0}, Lorg/antivirus/applocker/AppLockerActivity;->finish()V

    return-void
.end method

.method protected final a(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-boolean v3, p0, Lorg/antivirus/applocker/AppLockerActivity;->g:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/applocker/PasswordConfirmation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "password_change"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lorg/antivirus/applocker/AppLockerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "app_locker"

    const-string v1, "change_password"

    invoke-static {p0, v0, v1, v5}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, p1, -0x1

    sget-boolean v1, Lorg/antivirus/applocker/a;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/antivirus/applocker/AppLockerActivity;->e:[Ljava/lang/String;

    const v2, 0x7f09004d

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    sput-boolean v4, Lorg/antivirus/applocker/a;->a:Z

    const v0, 0x7f09004f

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    const-string v0, "app_locker"

    const-string v1, "activate_timer"

    invoke-static {p0, v0, v1, v5}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/antivirus/applocker/AppLockerActivity;->e:[Ljava/lang/String;

    const v2, 0x7f09004e

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    sput-boolean v3, Lorg/antivirus/applocker/a;->a:Z

    const v0, 0x7f090050

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lorg/antivirus/ui/PopupMenuHoneycomb;

    invoke-direct {v0, p0, p1}, Lorg/antivirus/ui/PopupMenuHoneycomb;-><init>(Lorg/antivirus/ui/IhandleMenuItem;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/applocker/AppLockerActivity;->addMenu(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/antivirus/ui/PopupMenuHoneycomb;->show()V

    return-void
.end method

.method protected final a(Z)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->c:Lorg/antivirus/applocker/f;

    invoke-virtual {v0, v1}, Lorg/antivirus/applocker/f;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/applocker/e;

    iput-boolean p1, v0, Lorg/antivirus/applocker/e;->d:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->c:Lorg/antivirus/applocker/f;

    invoke-virtual {v0}, Lorg/antivirus/applocker/f;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->i:Z

    return-void
.end method

.method public addMenu(Ljava/lang/Object;)V
    .locals 6

    const v5, 0x7f09004d

    const v1, 0x7f09004c

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_2

    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-boolean v1, Lorg/antivirus/applocker/a;->a:Z

    if-nez v1, :cond_1

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    :goto_0
    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    :goto_1
    const-string v0, "app_locker"

    const-string v1, "menu_opened"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const v1, 0x7f09004e

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/view/Menu;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    sget-boolean v0, Lorg/antivirus/applocker/a;->a:Z

    if-nez v0, :cond_3

    check-cast p1, Landroid/view/Menu;

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    check-cast p1, Landroid/view/Menu;

    const v0, 0x7f09004e

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    instance-of v0, p1, Lorg/antivirus/ui/PopupMenuHoneycomb;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/antivirus/ui/PopupMenuHoneycomb;

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v2, v1}, Lorg/antivirus/ui/PopupMenuHoneycomb;->add(IIILjava/lang/CharSequence;)V

    sget-boolean v0, Lorg/antivirus/applocker/a;->a:Z

    if-nez v0, :cond_5

    check-cast p1, Lorg/antivirus/ui/PopupMenuHoneycomb;

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v4, v2, v0}, Lorg/antivirus/ui/PopupMenuHoneycomb;->add(IIILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    check-cast p1, Lorg/antivirus/ui/PopupMenuHoneycomb;

    const v0, 0x7f09004e

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v4, v2, v0}, Lorg/antivirus/ui/PopupMenuHoneycomb;->add(IIILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected final b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public handleMenuItem(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    iput-boolean v2, p0, Lorg/antivirus/applocker/AppLockerActivity;->g:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/applocker/PasswordConfirmation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "password_change"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lorg/antivirus/applocker/AppLockerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "app_locker"

    const-string v1, "change_password"

    invoke-static {p0, v0, v1, v4}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lorg/antivirus/applocker/a;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f09004d

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    sput-boolean v3, Lorg/antivirus/applocker/a;->a:Z

    const v0, 0x7f09004f

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    const-string v0, "app_locker"

    const-string v1, "activate_timer"

    invoke-static {p0, v0, v1, v4}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f09004e

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    sput-boolean v2, Lorg/antivirus/applocker/a;->a:Z

    const v0, 0x7f090050

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lorg/antivirus/AVSettings;->isPasswordApproved:Z

    invoke-virtual {p0}, Lorg/antivirus/applocker/AppLockerActivity;->finish()V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/antivirus/ui/BaseToolListActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    sput-boolean v0, Lorg/antivirus/AVSettings;->isPasswordApproved:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lorg/antivirus/applocker/AppLockerActivity;->setContentView(I)V

    if-nez p1, :cond_0

    iput-boolean v3, p0, Lorg/antivirus/applocker/AppLockerActivity;->g:Z

    iput-boolean v3, p0, Lorg/antivirus/applocker/AppLockerActivity;->h:Z

    :goto_0
    const v0, 0x7f02004c

    const v1, 0x7f02004b

    const v2, 0x7f090040

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/antivirus/applocker/AppLockerActivity;->a(IILjava/lang/String;Z)V

    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lorg/antivirus/applocker/AppLockerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090057

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lorg/antivirus/applocker/AppLockerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lorg/antivirus/applocker/b;

    invoke-direct {v1, p0}, Lorg/antivirus/applocker/b;-><init>(Lorg/antivirus/applocker/AppLockerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Lorg/antivirus/applocker/f;

    invoke-direct {v0, p0, p0}, Lorg/antivirus/applocker/f;-><init>(Lorg/antivirus/applocker/AppLockerActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->c:Lorg/antivirus/applocker/f;

    iget-object v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->c:Lorg/antivirus/applocker/f;

    invoke-virtual {p0, v0}, Lorg/antivirus/applocker/AppLockerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lorg/antivirus/applocker/AppLockerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lorg/antivirus/applocker/c;

    invoke-direct {v1, p0}, Lorg/antivirus/applocker/c;-><init>(Lorg/antivirus/applocker/AppLockerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lorg/antivirus/applocker/d;

    invoke-direct {v0, p0, p0}, Lorg/antivirus/applocker/d;-><init>(Lorg/antivirus/applocker/AppLockerActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->k:Lorg/antivirus/applocker/d;

    iget-object v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->k:Lorg/antivirus/applocker/d;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/antivirus/applocker/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    const-string v0, "PasswordReqWasRaised"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->g:Z

    const-string v0, "mPasswordRegistrationWasRaised"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->h:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->k:Lorg/antivirus/applocker/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->k:Lorg/antivirus/applocker/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/antivirus/applocker/d;->a:Z

    iget-object v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->k:Lorg/antivirus/applocker/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/antivirus/applocker/d;->cancel(Z)Z

    :cond_0
    invoke-super {p0}, Lorg/antivirus/ui/BaseToolListActivity;->onDestroy()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lorg/antivirus/applocker/AppLockerActivity;->handleMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/antivirus/applocker/AppLockerActivity;->b(Z)V

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolListActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lorg/antivirus/applocker/AppLockerActivity;->addMenu(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-boolean v0, Lorg/antivirus/AVSettings;->isPasswordApproved:Z

    if-eqz v0, :cond_1

    sput-boolean v2, Lorg/antivirus/AVSettings;->isPasswordApproved:Z

    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/antivirus/ui/BaseToolListActivity;->onResume()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/antivirus/applocker/AppLockerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/AVSettings;->getApplockerUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/applocker/PasswordConfirmation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lorg/antivirus/applocker/AppLockerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v3, p0, Lorg/antivirus/applocker/AppLockerActivity;->h:Z

    goto :goto_0

    :cond_2
    sget-boolean v0, Lorg/antivirus/applocker/a;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/antivirus/applocker/AppLockerActivity;->h:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/applocker/LockerBlockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    const v2, 0x7f090043

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "firest_edit_text"

    const v2, 0x7f090047

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lorg/antivirus/applocker/AppLockerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v3, p0, Lorg/antivirus/applocker/AppLockerActivity;->g:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "PasswordReqWasRaised"

    iget-boolean v1, p0, Lorg/antivirus/applocker/AppLockerActivity;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mPasswordRegistrationWasRaised"

    iget-boolean v1, p0, Lorg/antivirus/applocker/AppLockerActivity;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/antivirus/applocker/AppLockerActivity;->b(Z)V

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
