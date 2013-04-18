.class public Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;
.super Landroid/app/Activity;
.source "FirewallDeskSMSActivityApiLevel4.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/hoi/widget/ah;


# static fields
.field public static a:Ljava/lang/String;

.field private static final b:Ljava/text/SimpleDateFormat;


# instance fields
.field private c:Ljava/util/ArrayList;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/EditText;

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/LayoutInflater;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Lcom/ijinshan/kinghelper/firewall/y;

.field private s:Lcom/hoi/widget/ScrollLayout;

.field private t:Lcom/jxphone/mosecurity/c/b;

.field private u:Landroid/widget/Button;

.field private v:Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;

.field private w:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private x:Landroid/content/SharedPreferences;

.field private y:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "newsmsuri"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->a:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->c:Ljava/util/ArrayList;

    .line 70
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->d:Landroid/widget/TextView;

    .line 71
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->e:Landroid/widget/TextView;

    .line 72
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->f:Landroid/widget/TextView;

    .line 73
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->g:Landroid/widget/TextView;

    .line 74
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->h:Landroid/widget/ImageView;

    .line 75
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->i:Landroid/widget/ImageView;

    .line 76
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->j:Landroid/widget/ImageView;

    .line 77
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->k:Landroid/widget/ImageView;

    .line 78
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->l:Landroid/widget/EditText;

    .line 79
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->m:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->n:Landroid/widget/TextView;

    .line 81
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->o:Landroid/view/LayoutInflater;

    .line 82
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->p:Landroid/widget/LinearLayout;

    .line 83
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->q:Landroid/widget/LinearLayout;

    .line 84
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    .line 85
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    .line 86
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->t:Lcom/jxphone/mosecurity/c/b;

    .line 87
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->u:Landroid/widget/Button;

    .line 88
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->v:Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;

    .line 89
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->w:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 90
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->x:Landroid/content/SharedPreferences;

    .line 717
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->y:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/t;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/t;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->w:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 164
    return-void
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 167
    packed-switch p1, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->i:Landroid/widget/ImageView;

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->u:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->i:Landroid/widget/ImageView;

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->u:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 192
    :pswitch_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->i:Landroid/widget/ImageView;

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->u:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->a(I)V

    return-void
.end method

.method private a(Lcom/ijinshan/kinghelper/firewall/x;)V
    .locals 4
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->t:Lcom/jxphone/mosecurity/c/b;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->t:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_0
    iget-object v1, p1, Lcom/ijinshan/kinghelper/firewall/x;->b:Ljava/lang/String;

    iget-wide v2, p1, Lcom/ijinshan/kinghelper/firewall/x;->i:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/core/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 243
    return-void

    .line 238
    :cond_0
    iget-object v0, p1, Lcom/ijinshan/kinghelper/firewall/x;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 413
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 415
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 416
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 417
    const-string v3, "address"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v3, "body"

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v3, "protocol"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v3, "date"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    const-string v2, "status"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v2, "type"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v2, "read"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :try_start_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/a/w;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 431
    new-instance v2, Landroid/content/Intent;

    const-string v3, "sms_send_action"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    const-string v3, "uri"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 433
    new-instance v1, Landroid/content/Intent;

    const-string v3, "sms_delivered_action"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 437
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 440
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x46

    if-le v1, v2, :cond_1

    .line 441
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 442
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 443
    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    return-void

    .line 447
    :cond_1
    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private a(Z)V
    .locals 12
    .parameter

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 283
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_3

    .line 286
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    const-string v0, "body"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 289
    const-string v2, "date"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 291
    const-string v3, "address"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 293
    const-string v4, "thread_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 296
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 299
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 300
    invoke-static {p0}, Lcom/keniu/security/b/e;->e(Landroid/content/Context;)Lcom/keniu/security/b/r;

    move-result-object v2

    .line 302
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 304
    new-instance v9, Lcom/ijinshan/kinghelper/firewall/x;

    invoke-direct {v9, p0}, Lcom/ijinshan/kinghelper/firewall/x;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)V

    .line 306
    const-string v10, "\r"

    const-string v11, "\n"

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    iput-object v6, v9, Lcom/ijinshan/kinghelper/firewall/x;->a:Ljava/lang/String;

    .line 309
    invoke-static {v3}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ijinshan/kinghelper/firewall/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/ijinshan/kinghelper/firewall/x;->h:Ljava/lang/String;

    .line 312
    invoke-static {p0}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v6

    invoke-static {v3}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/ijinshan/kinghelper/firewall/x;->g:Ljava/lang/String;

    .line 314
    const/4 v6, 0x0

    iput-boolean v6, v9, Lcom/ijinshan/kinghelper/firewall/x;->e:Z

    .line 315
    iput-wide v7, v9, Lcom/ijinshan/kinghelper/firewall/x;->c:J

    .line 316
    iput-object v0, v9, Lcom/ijinshan/kinghelper/firewall/x;->b:Ljava/lang/String;

    .line 317
    iput-object v3, v9, Lcom/ijinshan/kinghelper/firewall/x;->d:Ljava/lang/String;

    .line 318
    invoke-static {v3}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/keniu/security/b/r;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    iput-object v0, v9, Lcom/ijinshan/kinghelper/firewall/x;->f:Lcom/jxphone/mosecurity/c/b;

    .line 320
    iput-wide v4, v9, Lcom/ijinshan/kinghelper/firewall/x;->i:J

    .line 322
    iget-object v0, v9, Lcom/ijinshan/kinghelper/firewall/x;->f:Lcom/jxphone/mosecurity/c/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->b(Landroid/content/Context;Z)V

    .line 324
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300a7

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f08027a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, v9, Lcom/ijinshan/kinghelper/firewall/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v0, v3, v2}, Lcom/hoi/widget/ScrollLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v2}, Lcom/hoi/widget/ScrollLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->f:Landroid/widget/TextView;

    const-string v3, "%d/%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v6}, Lcom/hoi/widget/ScrollLayout;->a()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v6}, Lcom/hoi/widget/ScrollLayout;->getChildCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 322
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    invoke-virtual {v0, v9}, Lcom/ijinshan/kinghelper/firewall/y;->a(Lcom/ijinshan/kinghelper/firewall/x;)V

    .line 326
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/y;->notifyDataSetChanged()V

    .line 328
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 330
    :cond_3
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/h;->d(Landroid/content/Context;)V

    .line 332
    if-eqz p1, :cond_4

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->b(I)V

    .line 335
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :goto_2
    return-void

    .line 338
    :cond_4
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private b()V
    .locals 13

    .prologue
    const/4 v5, 0x2

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 546
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v1}, Lcom/hoi/widget/ScrollLayout;->a()I

    move-result v1

    .line 548
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    invoke-virtual {v2, v1}, Lcom/ijinshan/kinghelper/firewall/y;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/x;

    move-object v2, v0

    .line 550
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 553
    invoke-static {v1, v11}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 555
    const v1, 0x7f0b012e

    invoke-static {p0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 624
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-static {v1, v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 560
    const v1, 0x7f0b012d

    invoke-static {p0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 564
    :cond_1
    const-string v4, ""

    invoke-static {v5, v1, v4, v11}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;I)J

    .line 567
    const v1, 0x7f0b08f0

    invoke-static {p0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 570
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v2, Lcom/ijinshan/kinghelper/firewall/x;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 572
    if-eqz v1, :cond_3

    .line 573
    const-string v2, "address"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 575
    const-string v3, "body"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 577
    const-string v4, "subject"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 579
    const-string v5, "service_center"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 581
    const-string v6, "protocol"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 583
    const-string v7, "date"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 585
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 587
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 588
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 590
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 592
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 593
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 595
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 596
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 598
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 599
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 601
    const-string v7, "address"

    invoke-virtual {v8, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v2, "subject"

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v2, "service_center"

    invoke-virtual {v8, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v2, "read"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    const-string v2, "protocol"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    const-string v2, "body"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v2, "date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 608
    const-string v2, "person"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    const-string v2, "firewall_log_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 611
    const-string v2, "firewall_log_description"

    const v3, 0x7f0b0110

    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v2, "firewall_log_rule_id"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    const-string v2, "firewall_from"

    sget v3, Lcom/ijinshan/kinghelper/firewall/a/a;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 616
    const-string v2, "logtype"

    sget v3, Lcom/ijinshan/kinghelper/firewall/a/a;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 619
    invoke-static {v8}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/ContentValues;)J

    .line 621
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 623
    :cond_3
    invoke-direct {p0, v12}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->b(Z)V

    goto/16 :goto_0
.end method

.method private b(I)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f02004f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 351
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/y;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    invoke-virtual {v0, p1}, Lcom/ijinshan/kinghelper/firewall/y;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/x;

    .line 355
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/x;->f:Lcom/jxphone/mosecurity/c/b;

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->t:Lcom/jxphone/mosecurity/c/b;

    .line 356
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->t:Lcom/jxphone/mosecurity/c/b;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->t:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/x;->b:Ljava/lang/String;

    iget-wide v3, v0, Lcom/ijinshan/kinghelper/firewall/x;->i:J

    invoke-static {p0, v1, v2, v3, v4}, Lcom/ijinshan/kinghelper/firewall/core/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 358
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->f:Landroid/widget/TextView;

    const-string v2, "%d/%d"

    new-array v3, v8, [Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->b:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v0, Lcom/ijinshan/kinghelper/firewall/x;->c:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/x;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 363
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/x;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->m:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->t:Lcom/jxphone/mosecurity/c/b;

    if-eqz v1, :cond_5

    .line 368
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->t:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->t:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->g()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 371
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->t:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->g()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 375
    :goto_2
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->n:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/x;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->e:Landroid/widget/TextView;

    const-string v2, "%s(%s)"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->m:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, v0, Lcom/ijinshan/kinghelper/firewall/x;->g:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :cond_2
    :goto_3
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 397
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/ijinshan/kinghelper/firewall/x;->e:Z

    if-nez v1, :cond_0

    .line 398
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 399
    const-string v2, "read"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    :try_start_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v0, Lcom/ijinshan/kinghelper/firewall/x;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_4
    iput-boolean v7, v0, Lcom/ijinshan/kinghelper/firewall/x;->e:Z

    goto/16 :goto_0

    .line 356
    :cond_3
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/x;->d:Ljava/lang/String;

    goto/16 :goto_1

    .line 373
    :cond_4
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 380
    :cond_5
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/x;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 381
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/x;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 385
    :cond_6
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/x;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 389
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->d:Landroid/widget/TextView;

    const-string v2, "%s(%s)"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->m:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, v0, Lcom/ijinshan/kinghelper/firewall/x;->g:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :cond_7
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->e:Landroid/widget/TextView;

    const v2, 0x7f0b010d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 404
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)V
    .locals 13
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 60
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v1}, Lcom/hoi/widget/ScrollLayout;->a()I

    move-result v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    invoke-virtual {v2, v1}, Lcom/ijinshan/kinghelper/firewall/y;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/x;

    move-object v2, v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    invoke-static {v1, v11}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const v1, 0x7f0b012e

    invoke-static {p0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1, v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const v1, 0x7f0b012d

    invoke-static {p0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const-string v4, ""

    invoke-static {v5, v1, v4, v11}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;I)J

    const v1, 0x7f0b08f0

    invoke-static {p0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v2, Lcom/ijinshan/kinghelper/firewall/x;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "address"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "body"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "subject"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "service_center"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "protocol"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "date"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v7, "address"

    invoke-virtual {v8, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "subject"

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "service_center"

    invoke-virtual {v8, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "read"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "protocol"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "body"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "person"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "firewall_log_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "firewall_log_description"

    const v3, 0x7f0b0110

    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "firewall_log_rule_id"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "firewall_from"

    sget v3, Lcom/ijinshan/kinghelper/firewall/a/a;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "logtype"

    sget v3, Lcom/ijinshan/kinghelper/firewall/a/a;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v8}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/ContentValues;)J

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0, v12}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->b(Z)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->b(I)V

    return-void
.end method

.method private b(Lcom/ijinshan/kinghelper/firewall/x;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v0, -0x1

    .line 258
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 260
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300a7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 263
    const v0, 0x7f08027a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/ijinshan/kinghelper/firewall/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v0, v2, v1}, Lcom/hoi/widget/ScrollLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v6

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v1}, Lcom/hoi/widget/ScrollLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->f:Landroid/widget/TextView;

    const-string v2, "%d/%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v4}, Lcom/hoi/widget/ScrollLayout;->a()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v5}, Lcom/hoi/widget/ScrollLayout;->getChildCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 627
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v0}, Lcom/hoi/widget/ScrollLayout;->a()I

    move-result v1

    .line 628
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/y;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/x;

    .line 630
    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/x;->f:Lcom/jxphone/mosecurity/c/b;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/x;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 632
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    invoke-static {p0}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/x;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/ijinshan/kinghelper/firewall/x;->b:Ljava/lang/String;

    const/16 v4, 0x10

    const-string v5, ""

    invoke-static {p0, v2, v3, v4, v5}, Lcom/ijinshan/kinghelper/firewall/core/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 641
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/x;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    if-eqz p1, :cond_1

    .line 649
    const v0, 0x7f0b08f2

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/y;->a(I)V

    .line 653
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/y;->getCount()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 654
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v0, v1}, Lcom/hoi/widget/ScrollLayout;->removeViewAt(I)V

    .line 658
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/y;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 659
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->finish()V

    .line 671
    :cond_3
    :goto_0
    return-void

    .line 643
    :catch_0
    move-exception v0

    if-eqz p1, :cond_3

    .line 644
    const v0, 0x7f0b08f1

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 662
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/y;->notifyDataSetChanged()V

    .line 664
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/y;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 665
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v0, v1}, Lcom/hoi/widget/ScrollLayout;->a(I)V

    .line 666
    invoke-direct {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->b(I)V

    goto :goto_0

    .line 667
    :cond_5
    sub-int v0, v1, v6

    if-ltz v0, :cond_3

    .line 668
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    sub-int v2, v1, v6

    invoke-virtual {v0, v2}, Lcom/hoi/widget/ScrollLayout;->a(I)V

    .line 669
    sub-int v0, v1, v6

    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->b(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->o:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public final a(IIJ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 722
    if-eq p1, p2, :cond_0

    .line 723
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/w;

    invoke-direct {v0, p0, p1}, Lcom/ijinshan/kinghelper/firewall/w;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;I)V

    .line 733
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 735
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const v2, 0x7f0b0145

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 457
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080018

    if-ne v0, v1, :cond_4

    .line 458
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 459
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    const v0, 0x7f0b08ed

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->m:Ljava/lang/String;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "body"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "protocol"

    const-string v6, "0"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "date"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "status"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "type"

    const-string v5, "2"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "read"

    const-string v5, "1"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/a/w;->a:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    const-string v5, "sms_send_action"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "uri"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v5, "sms_delivered_action"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {p0, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {p0, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v6, 0x46

    if-le v2, v6, :cond_3

    invoke-virtual {v0, v3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 465
    :cond_2
    :goto_2
    const v0, 0x7f0b08ec

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 467
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->finish()V

    goto/16 :goto_0

    .line 464
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 469
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080019

    if-ne v0, v1, :cond_5

    .line 470
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v0}, Lcom/hoi/widget/ScrollLayout;->a()I

    move-result v0

    .line 471
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/y;->getCount()I

    move-result v1

    sub-int/2addr v1, v8

    if-gt v0, v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/y;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/x;

    .line 474
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms/conversations/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/ijinshan/kinghelper/firewall/x;->i:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 477
    const/high16 v0, 0x1400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 479
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->startActivity(Landroid/content/Intent;)V

    .line 480
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->finish()V

    goto/16 :goto_0

    .line 481
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080010

    if-ne v0, v1, :cond_6

    .line 482
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->finish()V

    goto/16 :goto_0

    .line 483
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08001b

    if-ne v0, v1, :cond_7

    .line 484
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v7}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 487
    const v1, 0x7f0b08ee

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 488
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 489
    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/u;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/u;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 498
    const v1, 0x7f0b0146

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 502
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto/16 :goto_0

    .line 504
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08001a

    if-ne v0, v1, :cond_8

    .line 506
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v7}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 509
    const v1, 0x7f0b08ef

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 510
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 511
    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/v;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/v;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 520
    const v1, 0x7f0b0146

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 524
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto/16 :goto_0

    .line 526
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080014

    if-ne v0, v1, :cond_9

    .line 527
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v0}, Lcom/hoi/widget/ScrollLayout;->a()I

    move-result v0

    .line 529
    if-lez v0, :cond_0

    .line 530
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    sub-int v2, v0, v8

    invoke-virtual {v1, v2}, Lcom/hoi/widget/ScrollLayout;->a(I)V

    .line 531
    sub-int/2addr v0, v8

    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->b(I)V

    goto/16 :goto_0

    .line 533
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080016

    if-ne v0, v1, :cond_0

    .line 534
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v0}, Lcom/hoi/widget/ScrollLayout;->a()I

    move-result v0

    .line 537
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/firewall/y;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 538
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/hoi/widget/ScrollLayout;->a(I)V

    .line 539
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->b(I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f080018

    const v6, 0x7f080016

    const v5, 0x7f080014

    const v4, 0x7f080010

    const/4 v3, 0x1

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->v:Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;->a(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 100
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->v:Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;

    invoke-virtual {p0, v1, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->setContentView(I)V

    .line 103
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->o:Landroid/view/LayoutInflater;

    .line 107
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hoi/widget/ScrollLayout;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    .line 108
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->s:Lcom/hoi/widget/ScrollLayout;

    invoke-virtual {v0, p0}, Lcom/hoi/widget/ScrollLayout;->a(Lcom/hoi/widget/ah;)V

    .line 110
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->d:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->e:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->f:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->g:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->h:Landroid/widget/ImageView;

    .line 115
    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->i:Landroid/widget/ImageView;

    .line 116
    invoke-virtual {p0, v5}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->j:Landroid/widget/ImageView;

    .line 117
    invoke-virtual {p0, v6}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->k:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->l:Landroid/widget/EditText;

    .line 119
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->n:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->p:Landroid/widget/LinearLayout;

    .line 122
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->q:Landroid/widget/LinearLayout;

    .line 123
    invoke-virtual {p0, v7}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->u:Landroid/widget/Button;

    .line 125
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/t;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/t;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->w:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 127
    const-string v0, "com.ijinshan.mguard_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->x:Landroid/content/SharedPreferences;

    .line 129
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->x:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->w:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 130
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->x:Landroid/content/SharedPreferences;

    const v1, 0x7f0b0200

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->a(I)V

    .line 134
    invoke-virtual {p0, v7}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0, v6}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p0, v5}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/y;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/y;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->r:Lcom/ijinshan/kinghelper/firewall/y;

    .line 146
    invoke-direct {p0, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->a(Z)V

    .line 148
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 209
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/h;->c(Landroid/content/Context;)V

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->v:Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->v:Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->w:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->x:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->w:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 216
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 221
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 223
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "home key down"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/h;->c(Landroid/content/Context;)V

    .line 227
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->finish()V

    .line 229
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->setIntent(Landroid/content/Intent;)V

    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->a(Z)V

    .line 347
    return-void
.end method
