.class public Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;
.super Lcom/avast/android/generic/util/ga/TrackedDialogFragment;
.source "ReportDialogFragment.java"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/avast/android/mobilesecurity/app/scanner/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedDialogFragment;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedDialogFragment;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;)Lcom/avast/android/mobilesecurity/app/scanner/k;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->f:Lcom/avast/android/mobilesecurity/app/scanner/k;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->a:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->b:I

    return v0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "/ms/scanner/reportDialog"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/ak;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c025f

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->f:Lcom/avast/android/mobilesecurity/app/scanner/k;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->f:Lcom/avast/android/mobilesecurity/app/scanner/k;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/scanner/k;->a()V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->dismiss()V

    .line 168
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 82
    instance-of v0, p1, Lcom/avast/android/mobilesecurity/app/scanner/k;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lcom/avast/android/mobilesecurity/app/scanner/k;

    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->f:Lcom/avast/android/mobilesecurity/app/scanner/k;

    .line 85
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    const-string v0, "uri"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->dismiss()V

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "uri"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->a:Landroid/net/Uri;

    .line 73
    const-string v0, "result"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->b:I

    .line 74
    const-string v0, "infectionType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->c:Ljava/lang/String;

    .line 75
    const-string v0, "email"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->d:Ljava/lang/String;

    .line 76
    const-string v0, "description"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const v11, 0x7f070144

    const v10, 0x7f070142

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x4480

    .line 89
    const v0, 0x7f03005d

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 90
    const v0, 0x7f0700c4

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/scanner/i;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/scanner/i;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 100
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 101
    const v2, 0x7f070145

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 103
    new-instance v3, Lcom/avast/android/mobilesecurity/app/scanner/j;

    invoke-direct {v3, p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/j;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f07013f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    const v1, 0x7f070140

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 125
    const/4 v3, 0x0

    .line 126
    const-string v5, "file"

    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->a:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    const v3, 0x7f0c0222

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v7

    div-float/2addr v0, v7

    .line 144
    :goto_0
    const v1, 0x3dcccccd

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 145
    const v1, 0x7f0c025b

    new-array v3, v9, [Ljava/lang/Object;

    const-string v5, "%.1f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p0, v1, v3}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 148
    const v1, 0x7f0c025a

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 151
    if-nez p3, :cond_0

    .line 152
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    return-object v4

    .line 130
    :cond_1
    const-string v5, "package"

    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->a:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    const v5, 0x7f0c0221

    invoke-virtual {p0, v5}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "package:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 135
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 136
    invoke-virtual {v6, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    new-instance v5, Ljava/io/File;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v7

    div-float/2addr v0, v7

    goto/16 :goto_0

    .line 138
    :catch_0
    move-exception v5

    .line 139
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move v0, v3

    goto/16 :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 173
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->f:Lcom/avast/android/mobilesecurity/app/scanner/k;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->f:Lcom/avast/android/mobilesecurity/app/scanner/k;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/scanner/k;->b()V

    .line 176
    :cond_0
    return-void
.end method
