.class public final Lorg/antivirus/tuneup/b;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;

.field private c:I

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/tuneup/b;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/antivirus/tuneup/b;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/tuneup/b;->d:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lorg/antivirus/tuneup/b;->b:Ljava/util/ArrayList;

    iput p2, p0, Lorg/antivirus/tuneup/b;->c:I

    return-void
.end method

.method static synthetic a(Lorg/antivirus/tuneup/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/tuneup/b;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/antivirus/core/scanners/ScannerPackagesResult;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/ScannerPackagesResult;-><init>()V

    iget-object v1, v0, Lorg/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/tuneup/b;->a:Landroid/content/Context;

    const-class v3, Lorg/antivirus/AVService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__SAC"

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "__SAD"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ScannerResult"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/antivirus/tuneup/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "package"

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    iget-object v0, p0, Lorg/antivirus/tuneup/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const-string v0, "pkg"

    :goto_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v0, "com.android.settings.ApplicationPkgName"

    goto :goto_1
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/b;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/b;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const v11, 0x7f0200ee

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    if-nez p2, :cond_3

    iget-object v0, p0, Lorg/antivirus/tuneup/b;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lorg/antivirus/tuneup/f;

    invoke-direct {v1, p0}, Lorg/antivirus/tuneup/f;-><init>(Lorg/antivirus/tuneup/b;)V

    const v0, 0x7f080052

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/antivirus/tuneup/f;->a:Landroid/widget/ImageView;

    const v0, 0x7f080053

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/tuneup/f;->b:Landroid/widget/TextView;

    const v0, 0x7f0800f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/tuneup/f;->c:Landroid/widget/TextView;

    const v0, 0x7f080070

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/tuneup/f;->d:Landroid/widget/TextView;

    const v0, 0x7f0800fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lorg/antivirus/tuneup/f;->e:Landroid/widget/Button;

    const v0, 0x7f0800fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lorg/antivirus/tuneup/f;->f:Landroid/widget/Button;

    iget-object v0, v1, Lorg/antivirus/tuneup/f;->e:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/f;->f:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget v0, p0, Lorg/antivirus/tuneup/b;->c:I

    if-ne v0, v10, :cond_0

    iget-object v0, v1, Lorg/antivirus/tuneup/f;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/f;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/antivirus/tuneup/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/InstalledApp;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/antivirus/tuneup/f;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lorg/antivirus/ui/InstalledApp;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/antivirus/ui/InstalledApp;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lorg/antivirus/tuneup/f;->a:Landroid/widget/ImageView;

    iget-object v4, v0, Lorg/antivirus/ui/InstalledApp;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v1, Lorg/antivirus/tuneup/f;->a:Landroid/widget/ImageView;

    new-instance v4, Lorg/antivirus/tuneup/c;

    invoke-direct {v4, p0, v0}, Lorg/antivirus/tuneup/c;-><init>(Lorg/antivirus/tuneup/b;Lorg/antivirus/ui/InstalledApp;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget v3, p0, Lorg/antivirus/tuneup/b;->c:I

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    return-object p2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/tuneup/f;

    move-object v1, v0

    goto :goto_0

    :pswitch_0
    iget-object v3, v1, Lorg/antivirus/tuneup/f;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/antivirus/tuneup/b;->a:Landroid/content/Context;

    const v5, 0x7f06000d

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v3, v1, Lorg/antivirus/tuneup/f;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/antivirus/tuneup/b;->a:Landroid/content/Context;

    iget-wide v6, v0, Lorg/antivirus/ui/InstalledApp;->apkSize:J

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lorg/antivirus/ui/InstalledApp;->mPackageLocation:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, ""

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lorg/antivirus/tuneup/f;->e:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, v1, Lorg/antivirus/tuneup/f;->e:Landroid/widget/Button;

    new-instance v3, Lorg/antivirus/tuneup/d;

    invoke-direct {v3, p0, v0, p1}, Lorg/antivirus/tuneup/d;-><init>(Lorg/antivirus/tuneup/b;Lorg/antivirus/ui/InstalledApp;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lt v2, v8, :cond_2

    iget-object v2, v1, Lorg/antivirus/tuneup/f;->f:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_4

    invoke-static {}, Lorg/antivirus/core/compatibility/HoneycombTools;->isExternalStorageEmulated()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/antivirus/tuneup/f;->f:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    iget-object v2, v1, Lorg/antivirus/tuneup/f;->f:Landroid/widget/Button;

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, v1, Lorg/antivirus/tuneup/f;->f:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setEnabled(Z)V

    iget-byte v2, v0, Lorg/antivirus/ui/InstalledApp;->movable:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    iget-object v2, v1, Lorg/antivirus/tuneup/f;->f:Landroid/widget/Button;

    const v3, 0x7f0200ed

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, v1, Lorg/antivirus/tuneup/f;->f:Landroid/widget/Button;

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    :goto_3
    iget-object v1, v1, Lorg/antivirus/tuneup/f;->f:Landroid/widget/Button;

    new-instance v2, Lorg/antivirus/tuneup/e;

    invoke-direct {v2, p0, v0, p1}, Lorg/antivirus/tuneup/e;-><init>(Lorg/antivirus/tuneup/b;Lorg/antivirus/ui/InstalledApp;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_6
    const v2, 0x7f090124

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    iget-byte v2, v0, Lorg/antivirus/ui/InstalledApp;->movable:B

    if-ne v2, v10, :cond_5

    iget-object v2, v1, Lorg/antivirus/tuneup/f;->f:Landroid/widget/Button;

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, v1, Lorg/antivirus/tuneup/f;->f:Landroid/widget/Button;

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    :pswitch_1
    iget-object v1, v1, Lorg/antivirus/tuneup/f;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<b>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/antivirus/tuneup/b;->a:Landroid/content/Context;

    iget-wide v4, v0, Lorg/antivirus/ui/InstalledApp;->outTraffic:J

    iget-wide v6, v0, Lorg/antivirus/ui/InstalledApp;->inTraffic:J

    add-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
