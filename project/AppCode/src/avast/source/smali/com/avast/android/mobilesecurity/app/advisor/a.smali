.class Lcom/avast/android/mobilesecurity/app/advisor/a;
.super Landroid/support/v4/e/a;
.source "AdvisorAppsFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;

.field private final b:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/advisor/a;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;

    .line 147
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v4/e/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 149
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/a;->b:Landroid/content/pm/PackageManager;

    .line 150
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/advisor/b;

    .line 155
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/advisor/b;->a:Landroid/widget/TextView;

    const-string v2, "name"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :try_start_0
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/advisor/b;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/advisor/a;->b:Landroid/content/pm/PackageManager;

    const-string v3, "packageName"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v1

    .line 160
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/advisor/b;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/a;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030075

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 170
    new-instance v2, Lcom/avast/android/mobilesecurity/app/advisor/b;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/advisor/b;-><init>(Lcom/avast/android/mobilesecurity/app/advisor/a;)V

    .line 171
    const v0, 0x7f070059

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/advisor/b;->b:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f070140

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/advisor/b;->a:Landroid/widget/TextView;

    .line 173
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    return-object v1
.end method
