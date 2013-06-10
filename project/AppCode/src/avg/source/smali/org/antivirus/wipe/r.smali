.class final Lorg/antivirus/wipe/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lorg/antivirus/wipe/WipeByApp;->c:Lorg/antivirus/wipe/ai;

    const/16 v2, 0x1c

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "content://com.android.contacts/contacts"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "content://com.android.contacts/data"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "content://com.android.contacts/raw_contact_entities"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "content://com.android.contacts/emails"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "content://com.android.contacts/postals"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "content://com.android.contacts/groups"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "content://com.android.contacts/groups_summary"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "content://contacts/people"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "content://contacts/phones"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "content://contacts/photos"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "content://contacts/calls"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "content://contacts/"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "content://contacts/settings"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "content://contacts/deleted_people"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "content://contacts/people/with_email_or_im_filter"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "content://contacts/groups"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "content://contacts/deleted_groups"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "content://contacts/groupmembership"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "content://contacts/groupmembershipraw"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "content://contacts/contact_methods"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "content://contacts/contact_methods/email"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "content://contacts/presence"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "content://contacts/organizations"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "content://contacts/photos"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "content://contacts/extensions"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "content://com.android.contacts/raw_contacts"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "content://com.android.contacts/contacts"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "content://com.android.contacts/data"

    aput-object v4, v2, v3

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/antivirus/wipe/ai;->a(Landroid/net/Uri;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
