.class public abstract Lcom/antivirus/ui/callmessagefilter/fragment/a;
.super Lcom/antivirus/ui/callmessagefilter/fragment/s;

# interfaces
.implements Landroid/support/v4/app/ae;


# static fields
.field protected static final a:[Ljava/lang/String;


# instance fields
.field protected b:Lcom/antivirus/ui/callmessagefilter/w;

.field protected c:Lcom/antivirus/ui/callmessagefilter/a;

.field protected d:I

.field protected e:Lcom/antivirus/ui/callmessagefilter/v;

.field protected f:Landroid/widget/TextView;

.field protected g:Z

.field protected h:Z

.field protected i:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/s;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->i:J

    return-void
.end method


# virtual methods
.method protected abstract F()Lcom/antivirus/ui/callmessagefilter/v;
.end method

.method protected G()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->g:Z

    return-void
.end method

.method public H()Lcom/antivirus/ui/callmessagefilter/w;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->b:Lcom/antivirus/ui/callmessagefilter/w;

    return-object v0
.end method

.method protected I()V
    .locals 4

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->h()Landroid/support/v4/app/i;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03001f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0900b7

    invoke-virtual {p0, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090202

    invoke-virtual {p0, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0800b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09000d

    new-instance v2, Lcom/antivirus/ui/callmessagefilter/fragment/d;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/d;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/a;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected abstract J()Lcom/antivirus/ui/callmessagefilter/j;
.end method

.method protected abstract K()V
.end method

.method protected abstract L()V
.end method

.method public a(ILandroid/os/Bundle;)Landroid/support/v4/a/c;
    .locals 2

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/b;

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/antivirus/ui/callmessagefilter/fragment/b;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/a;Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/support/v4/a/a;->i()V

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0800d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a()V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->b:Lcom/antivirus/ui/callmessagefilter/w;

    invoke-interface {v2}, Lcom/antivirus/ui/callmessagefilter/w;->a()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method protected a(Lcom/antivirus/ui/callmessagefilter/d;Landroid/content/Context;)Lcom/antivirus/ui/callmessagefilter/contacts/a;
    .locals 2

    invoke-static {p2}, Lcom/antivirus/core/b/a/b;->a(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/antivirus/ui/callmessagefilter/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/core/b/a/b;->a(Ljava/lang/String;)Lcom/antivirus/core/b/b/a;

    move-result-object v0

    new-instance v1, Lcom/antivirus/ui/callmessagefilter/contacts/a;

    invoke-direct {v1, v0}, Lcom/antivirus/ui/callmessagefilter/contacts/a;-><init>(Lcom/antivirus/core/b/b/a;)V

    return-object v1
.end method

.method protected a(J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f090205

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a()V
.end method

.method protected a(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->c(I)V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->c:Lcom/antivirus/ui/callmessagefilter/a;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->b:Lcom/antivirus/ui/callmessagefilter/w;

    invoke-interface {v1}, Lcom/antivirus/ui/callmessagefilter/w;->b()[Lcom/antivirus/ui/callmessagefilter/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/a;->a([Lcom/antivirus/ui/callmessagefilter/x;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/d;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "display_name"

    invoke-virtual {p2}, Lcom/antivirus/ui/callmessagefilter/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone_number"

    invoke-virtual {p2}, Lcom/antivirus/ui/callmessagefilter/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "use_named_filter"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/support/v4/a/c;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v4/a/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(Landroid/support/v4/a/c;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Landroid/support/v4/a/c;Ljava/lang/Void;)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->h:Z

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->N()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->b:Lcom/antivirus/ui/callmessagefilter/w;

    invoke-interface {v0}, Lcom/antivirus/ui/callmessagefilter/w;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->c(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->c:Lcom/antivirus/ui/callmessagefilter/a;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/a;->a(I)Lcom/antivirus/ui/callmessagefilter/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->b(Lcom/antivirus/ui/callmessagefilter/d;)V

    goto :goto_0
.end method

.method protected a(Lcom/antivirus/ui/callmessagefilter/d;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(Lcom/antivirus/ui/callmessagefilter/d;I)V

    return-void
.end method

.method protected a(Lcom/antivirus/ui/callmessagefilter/d;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->h()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/antivirus/ui/callmessagefilter/fragment/c;

    invoke-direct {v1, p0, p2, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/c;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/a;ILcom/antivirus/ui/callmessagefilter/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "-?\\d+(\\.\\d+)?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Landroid/util/Pair;
    .locals 8

    const/4 v6, 0x0

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "photo_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object p1, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_2
    :try_start_2
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(IZ)V

    return-void
.end method

.method protected b(Lcom/antivirus/ui/callmessagefilter/d;)V
    .locals 4

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(Lcom/antivirus/ui/callmessagefilter/d;Landroid/content/Context;)Lcom/antivirus/ui/callmessagefilter/contacts/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->J()Lcom/antivirus/ui/callmessagefilter/j;

    move-result-object v2

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->e:Lcom/antivirus/ui/callmessagefilter/v;

    invoke-virtual {v2, v0, p1, v1, v3}, Lcom/antivirus/ui/callmessagefilter/j;->a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/contacts/a;Lcom/antivirus/ui/callmessagefilter/v;)V

    return-void
.end method

.method protected b(Lcom/antivirus/ui/callmessagefilter/d;I)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->c:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/a;->a(Lcom/antivirus/ui/callmessagefilter/d;I)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->b:Lcom/antivirus/ui/callmessagefilter/w;

    invoke-interface {v0}, Lcom/antivirus/ui/callmessagefilter/w;->b()[Lcom/antivirus/ui/callmessagefilter/x;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/antivirus/ui/callmessagefilter/d;->d()Lcom/antivirus/ui/callmessagefilter/x;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(Lcom/antivirus/ui/callmessagefilter/d;I)V

    :cond_0
    return-void
.end method

.method protected c(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->d(I)Lcom/antivirus/ui/callmessagefilter/w;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->b:Lcom/antivirus/ui/callmessagefilter/w;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->f:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->c:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a;->notifyDataSetChanged()V

    return-void
.end method

.method protected c(Lcom/antivirus/ui/callmessagefilter/d;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "call_message_blocker"

    const-string v2, "call_message_blocker_show_redirect_dialog"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->h()Landroid/support/v4/app/i;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03001f

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0901fe

    invoke-virtual {p0, v3}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0901ff

    invoke-virtual {p0, v3}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0800b8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v3, 0x7f09000d

    new-instance v4, Lcom/antivirus/ui/callmessagefilter/fragment/e;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/e;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/a;Landroid/widget/CheckBox;Landroid/support/v4/app/i;Lcom/antivirus/ui/callmessagefilter/d;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f09000e

    new-instance v1, Lcom/antivirus/ui/callmessagefilter/fragment/f;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/f;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/a;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected abstract d(I)Lcom/antivirus/ui/callmessagefilter/w;
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->d(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->L()V

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->N()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->c:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->N()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200c8

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->d:I

    iput-boolean v5, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->g:Z

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->p()Landroid/support/v4/app/ad;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/ad;->a(ILandroid/os/Bundle;Landroid/support/v4/app/ae;)Landroid/support/v4/a/c;

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->F()Lcom/antivirus/ui/callmessagefilter/v;

    move-result-object v1

    iput-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/a;->e:Lcom/antivirus/ui/callmessagefilter/v;

    const v1, 0x7f09020a

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected abstract e(I)Ljava/lang/String;
.end method

.method public e()V
    .locals 2

    invoke-super {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->e()V

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->p()Landroid/support/v4/app/ad;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ad;->a(I)Landroid/support/v4/a/c;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->b()Z

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->G()V

    return-void
.end method
